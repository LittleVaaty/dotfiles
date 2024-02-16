#!/usr/bin/env bash

# Current Theme
dir="$HOME/.config/rofi/powermenu/"
theme='config'

# Options
shutdown=' Shutdown'
reboot=' Reboot'
lock=' Lock'
logout=' Logout'
yes=' Yes'
no=' No'

# CMDs
user=$(whoami)
hostname=$(hostname)

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
        -mesg "${user} on ${hostname}" \
		-theme ${dir}/${theme}.rasi
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$lock\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
    i3exit shutdown
        ;;
    $reboot)
    i3exit reboot
        ;;
    $lock)
    i3exit lock
        ;;
    $logout)
    i3exit logout
        ;;
esac
