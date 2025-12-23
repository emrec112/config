#!/bin/bash
PLAYER="spotify"

if playerctl -p "$PLAYER" metadata &>/dev/null; then

    #STATUS=$(playerctl -p spotify status 2>/dev/null)

    #if [ "$STATUS" = "Playing" ]; then
        #ICON=""

    #elif [ "$STATUS" = "Paused" ] || [ "$STATUS" = "Stopped" ]; then
        #ICON=""
    #fi

    TITLE=$(playerctl -p "$PLAYER" metadata --format "{{ title }} - {{ artist }}")
    #echo "$ICON $TITLE"
    echo "  $TITLE"
else
    echo ""
fi
