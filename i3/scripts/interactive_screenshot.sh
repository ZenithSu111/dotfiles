#!/bin/bash

# 建立暫存檔
TMPFILE=$(mktemp /tmp/screenshot_XXXXXX.png)

# 用 flameshot 匡選範圍，輸出至暫存圖檔
flameshot gui --raw > "$TMPFILE"

# 選單選擇儲存或複製
CHOICE=$(echo -e "📁 Save to File\n📋 Copy to Clipboard" | rofi -dmenu -p "Screenshot action:")

case "$CHOICE" in
    "📁 Save to File")
        DEST="$HOME/Pictures/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png"
        mv "$TMPFILE" "$DEST"
        notify-send "📸 Screenshot saved to $DEST"
        ;;
    "📋 Copy to Clipboard")
        xclip -selection clipboard -t image/png -i "$TMPFILE"
        notify-send "📋 Screenshot copied to clipboard"
        rm "$TMPFILE"
        ;;
    *)
        notify-send "❌ Screenshot cancelled"
        rm "$TMPFILE"
        ;;
esac

