#!/bin/sh

# A script for scan QR code and copy the url to clipboard
# dependency:
# zbar xclip imagemagick notify-send.sh(AUR)

# reference:
# https://www.reddit.com/r/unixporn/comments/p0md2y/oc_scan_a_qr_code_with_a_keyboard_shortcut/

import /tmp/qr.png

# scan a QR code
scanresult=$(zbarimg -q --raw /tmp/qr.png)

# notify success or fail
if [ -z "$scanresult" ]; then
    notify-send "QR Scan" "No scan data found"
else
    echo "$scanresult" | xclip -sel c -r
    convert /tmp/qr.png -resize 75x75 /tmp/qr.png
    notify-send -i /tmp/qr.png "QR Scan" "$scanresult\n(copied to clipboard)"
fi
