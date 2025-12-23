#!/usr/bin/env bash

device="intel_backlight"
cur=$(brightnessctl -d "$device" g)
max=$(brightnessctl -d "$device" m)
percentage=$((cur * 100 / max))

# ikon seçimi
if [ "$percentage" -ge 90 ]; then icon=""
elif [ "$percentage" -ge 75 ]; then icon=""
elif [ "$percentage" -ge 60 ]; then icon=""
elif [ "$percentage" -ge 45 ]; then icon=""
elif [ "$percentage" -ge 30 ]; then icon=""
elif [ "$percentage" -ge 15 ]; then icon=""
else icon=""; fi

printf '{"percentage":%d,"icon":"%s"}\n' "$percentage" "$icon"
