#/bin/bash

# This script combined 3 landscape oriented image into a vertical arrangement composite image with resolution of 1080x1920. Useful for IG story

# Check if ImageMagick is installed
if ! command -v montage &> /dev/null; then
    echo "ImageMagick is not installed. Please install it first."
    exit 1
fi

# Define input images and output image
image1="$1"
image2="$2"
image3="$3"
output_image="combined-image-1x3.jpg"

# Function to resize and crop an image to match the target resolution
convert "$image1" -gravity center -crop 1080:640 -resize 1080x640 "${image1/.jpg/-resized}.jpg"
convert "$image2" -gravity center -crop 1080:640 -resize 1080x640 "${image2/.jpg/-resized}.jpg"
convert "$image3" -gravity center -crop 1080:640 -resize 1080x640 "${image3/.jpg/-resized}.jpg"

## Create a vertical montage with 3:2 aspect ratio
montage \
    "${image1/.jpg/-resized}.jpg"   \
    "${image2/.jpg/-resized}.jpg"   \
    "${image3/.jpg/-resized}.jpg"   \
    -geometry 1080x640+0+0 -tile 1x3 "$output_image"

echo "Images combined successfully!"
