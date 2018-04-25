: Init section:
STATEDIR="$HOME/state"


: Create directory :
		mkdir -p $STATEDIR

: Pacman Package :
		pacman -Qs | grep -v '^ ' > $STATEDIR/pacman.txt

: :
