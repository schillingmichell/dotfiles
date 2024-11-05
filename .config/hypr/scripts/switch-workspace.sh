#! /bin/bash

activemonitor=$(hyprctl monitors -j | jq '.[] | select(.focused == true).id')
passivemonitor=$(hyprctl monitors -j | jq '.[] | select(.focused == false).id')

hyprctl dispatch focusmonitor "$passivemonitor"
hyprctl dispatch split-workspace "$1"

hyprctl dispatch focusmonitor "$activemonitor"
hyprctl dispatch split-workspace "$1"
