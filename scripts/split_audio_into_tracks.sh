#!/bin/bash

# Dependency: ffmpeg
# This script will split the audio file according to timestamp.set
# The output file format will same as audio source file to avoid generation loss
#
# Example of timestamp.set
# start_time title
# 00:00:00 いつか
# 00:05:53 Daydream
# 00:10:25 Silent screamer
# 00:15:55 Ride on time
# 00:21:55 夏への扉

TIMESTAMP="/home/sean/Music/split_audio_with_timestamp/timestamp.set"
SRC_AUDIO="/home/sean/Music/split_audio_with_timestamp/Anri_Timely.opus"
COVER_ART="/home/sean/Music/split_audio_with_timestamp/cover.jpg"
OUTPUT_DIR="Anri - Timely!!"
CURRENT_DIR=$(pwd)
FILE_EXT="${SRC_AUDIO##*.}"

# Metadatas
ARTIST="杏里"
ALBUM="Timely!!"
YEAR="1983"
GENRE="City Pop"

start_arr=()
end_arr=()
title_arr=()

# Parsing timestamp
while read line; do
    IFS=' '
    read -r start title <<< $line
    start_arr+=("$start")
    title_arr+=("$title")
done < "$TIMESTAMP"

for (( i=0; i<$(( ${#start_arr[@]} -1 )); i++)); do
    end_arr+=("${start_arr[$(( $i + 1 ))]}")
done

# get audio end time with ffprobe
end_arr+=("$(ffprobe -i "$SRC_AUDIO" -v quiet -show_entries format=duration -hide_banner -of default=noprint_wrappers=1:nokey=1 -sexagesimal)")

mkdir -p "$OUTPUT_DIR"
cd "$OUTPUT_DIR"

# Split audio with ffmpeg
for (( i=0; i<${#title_arr[@]}; i++ )); do
    printf -v j "%02d" $i # format 2 digit number prefix of filename 
    # ffmpeg -ss "${start_arr[$i]}" -t "${end_arr[$i]}" -i "$SRC_AUDIO" -acodec copy "$j ${title_arr[$i]}.$FILE_EXT"
    ffmpeg -ss "${start_arr[$i]}" -t "${end_arr[$i]}" -i "$SRC_AUDIO" -acodec copy "$output_file"
    output_file="$j "${title_arr[$i]}".$FILE_EXT"
    echo $output_file
    
    # ffmpeg -acodec copy \
    #     # -i $COVER_ART -map 0:a -map 1 -disposition:1 attached_pic \
    #     -i "$SRC_AUDIO" \
    #     # -metadata title="${title_arr[$i]}" \
    #     # -metadata album="$ALBUM" \
    #     # -metadata artist="$ARTIST" \
    #     # -metadata year="$YEAR" \
    #     -ss "${start_arr[$i]}" \
    #     -t "${end_arr[$i]}" "$output_file"
done

cd "$CURRENT_DIR" 
