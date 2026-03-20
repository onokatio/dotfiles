#!/bin/sh
# Set brightness via xbrightness when redshift status changes

# Set brightness values for each status.
# Range from 1 to 100 is valid
brightness_day=100
brightness_transition=80
brightness_night=40
# Set fps for smoooooth transition
fps=1000
# Adjust this grep to filter only the backlights you want to adjust
#backlights=($(xbacklight -list | grep ddcci*))

set_brightness() {
	#for backlight in "${backlights[@]}"
	#do
	#	xbacklight -set $1 -fps $fps -ctrl $backlight &
	#done
	light -S $1
	ddcutil -v -b 4 --noverify setvcp 10 $1
}

set_mode_normal() {
	ddcutil -v -b 4 --noverify setvcp DC 06
	#ddcutil -b 4 scs
}

set_mode_low_bluelight() {
	ddcutil -v -b 4 --noverify setvcp DC 07
	#ddcutil -b 4 scs
}

if [ "$1" = period-changed ]; then
	case $3 in
		night)
			#set_mode_low_bluelight
			set_brightness $brightness_night 
			;;
		transition)
			set_brightness $brightness_transition
			;;
		daytime)
			#set_mode_normal
			set_brightness $brightness_day
			;;
	esac
	#ddcutil -b 4 scs
fi
