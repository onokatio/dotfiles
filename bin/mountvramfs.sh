mkdir -p /tmp/vram
vramfs /tmp/vram 1024MB
dd if=/dev/zero of=/tmp/vram/swapfile bs=1M count=1000
chmod 666 /tmp/vram/swapfile
mkswap /tmp/vram/swapfile
swapon /tmp/vram/swapfile
