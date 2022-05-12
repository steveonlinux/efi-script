#!/bin/sh

efibootmgr -b 0 -B
efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=PARTUUID=e7529a94-a769-4efd-91f2-2e7d28ede9cb rw initrd=\initramfs-linux.img rd.driver.blacklist=nouveau nvidia-drm.modeset=1' --verbose --timeout 0
