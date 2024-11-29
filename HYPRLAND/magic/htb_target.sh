#!/usr/bin/bash

ip_target=$(cat ~/.config/bspwm/scripts/target | awk '{print $1}')
name_target=$(cat ~/.config/bspwm/scripts/target | awk '{print $2}')

	if [ $ip_target ] && [ $name_target ]; then
	echo "%{F#cf9fff}什 %{F#ffffff} $ip_target - $name_target"
	elif [ $(cat ~/.config/bspwm/scripts/target | wc -w) -eq 1 ]; then
	echo "%{F#cf9fff}什 %{F#ffffff} $ip_target"
	else
	echo "%{F#cf9fff}ﲅ  %{u-}%{F#ffffff} No target"
	fi

