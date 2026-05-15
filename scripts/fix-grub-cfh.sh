#!/bin/bash

##############################
# IMPORTANT!
##############################
# run this script then rebuild luks passphrase after fedora upgrade
# 
#sudo /usr/local/bin/fix-grub-cfg.sh
#sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-device=/dev/tpmrm0 --tpm2-pcrs=0+7 /dev/nvme0n1p2
#sudo dracut --force --regenerate-all
#sudo reboot
#

cat > /boot/efi/EFI/fedora/grub.cfg << 'EOF'
insmod part_gpt
insmod cryptodisk
insmod luks
insmod luks2
insmod btrfs
cryptomount (hd0,gpt2)
set root=(crypto0)
set prefix=(crypto0)/root/boot/grub2
export prefix
configfile $prefix/grub.cfg
EOF
echo "grub.cfg restored!"
