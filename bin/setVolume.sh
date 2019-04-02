#!/bin/bash


MYSINKS=$(pactl list sinks | grep -oP 'Sink #\K\d')

echo $MYSINKS
increaseVolume() {
	for MYSINK in $MYSINKS
	do
		echo $MYSINK
		pactl set-sink-volume $MYSINK +5%
	done
}

decreaseVolume() {
	for MYSINK in $MYSINKS
        do      
                pactl set-sink-volume $MYSINK -5%
        done

}

toggleMute() {
	for MYSINK in $MYSINKS
	do
		pactl set-sink-mute $MYSINK toggle
	done
}

case "$1" in
	(increaseVolume)
		increaseVolume
		exit 1
		;;
	(decreaseVolume)
		decreaseVolume
		exit 2
		;;
	(toggleMute)
		toggleMute
		exit 3
		;;
esac

exit 0
