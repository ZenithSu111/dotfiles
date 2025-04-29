#!/bin/bash

# 使用 rofi 接收輸入
query=$(rofi -dmenu -p "Web Search:" )

# 如果有輸入內容就執行
if [ -n "$query" ]; then
    # 這裡可以換成你常用的瀏覽器，例如 firefox、brave、chromium
    brave "https://www.google.com/search?q=${query}"
fi

