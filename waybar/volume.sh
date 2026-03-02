sink="$(pactl list sink-inputs | grep -B 20 "application.name = \"$1\""| grep "Sink Input" | awk '{print $3}')"

sink=$(echo "$sink" | sed 's/^\#//')


pactl set-sink-input-volume $sink $2
