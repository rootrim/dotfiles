#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <folder_path>"
    exit 1
fi

TARGET_DIR="$1"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: '$TARGET_DIR' it is not a folder or there is no thing like that."
    exit 1
fi

SELECTED_FILE=$(ls -A "$TARGET_DIR" | rofi -dmenu -p "Choose a file: ")

if [ -z "$SELECTED_FILE" ]; then
    echo "No folder selected"
    exit 0
fi

SELECTED_PATH="$TARGET_DIR/$SELECTED_FILE"

echo $SELECTED_PATH

# wal -i $SELECTED_PATH -n
swww img $SELECTED_PATH --transition-type=outer --transition-fps=120 --transition-duration=1
