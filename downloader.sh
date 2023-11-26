#!/bin/bash

# Set default input folder to 'input' or use the provided argument
INPUT_FOLDER=${1:-input}

# Create 'video' folder if it doesn't exist
mkdir -p video

# Iterate through all m3u8 files in the current folder
for file in *.m3u8; do
    if [[ -f "$file" ]]; then
        echo "Processing $file..."
        sh video.sh "$file"
        echo "Finished processing $file."
        echo

        # Get the base name of the m3u8 file (without extension)
        M3U8_BASENAME=$(basename "$file" .m3u8)

        # Rename the output file to the name of the m3u8 file
        mv "temp/output.mp4" "video/${M3U8_BASENAME}.mp4"

        # Cleanup: Remove 'temp' folder
        rm -r temp;
    fi
done
