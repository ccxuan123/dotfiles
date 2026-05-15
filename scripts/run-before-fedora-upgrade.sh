sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-device=/dev/tpmrm0 --tpm2-pcrs=0+7 /dev/nvme0n1p2
sudo dracut --force --regenerate-all
