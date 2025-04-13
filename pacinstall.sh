## Install a list of pkg's from installimgpkglist.txt
pacman -S - < isogpkglist.txt

## Set the time zone
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
hwclock --systohc

## Edit /etc/locale.gen and uncomment en_US.UTF-8 UTF-8 and other needed UTF-8 locales. Generate the locales by running
nano /etc/locale.gen
locale-gen

## Create the locale.conf file, and set the LANG variable accordingly
nano /etc/locale.conf

## Create the hostname file
nano /etc/hostname

## To allow resolving the local hostname, additionally add it to the hosts file
nano /etc/hosts
# 127.0.0.1        localhost
# ::1              localhost
# 127.0.1.1        yourhostname

## set up a network connection
systemctl enable dhcpcd

## Set the root password
passwd

## Install Grub a Linux-capable boot loader
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

## Exit the chroot
exit