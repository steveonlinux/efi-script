#!/bin/sh

efibootmgr -b 0 -B > /dev/null
printf "Deleted boot entry: 0000\n\n"
printf "Reloaded entry 0000...\n"
efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=PARTUUID=fd8086ba-4136-bd4e-87d2-9171ba8c53c9 rw initrd=\initramfs-linux.img rd.driver.blacklist=nouveau nvidia-drm.modeset=1' --verbose --timeout 0 | grep "Boot0000"
