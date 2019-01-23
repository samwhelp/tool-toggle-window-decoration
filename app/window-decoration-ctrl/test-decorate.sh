#!/usr/bin/env bash

main_test () {
	#local wid=$(wmctrl -lx | grep -E "xzoom x2" | grep -oE "[0-9a-z]{10}")
	#local wid=$(xdotool search --name 'xzoom x2')
	local wid=$(xwininfo -name 'xzoom x2' | grep 'Window id' | awk '{print $4}')
	./window-decoration-ctrl decorate "$wid"
}

main_test
