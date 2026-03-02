#!/bin/bash

# Spotify çalışmıyorsa hiçbir şey gösterme veya boşluk bırak
if ! playerctl -p spotify status &>/dev/null; then
    echo ""
    exit 0
fi

# Durum
STATUS=$(playerctl -p spotify status)

if [ "$STATUS" = "Playing" ]; then
    echo "󰏤" # Duraklat
else
    echo "󰐊" # Oynat
fi
