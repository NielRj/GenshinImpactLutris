#!/bin/bash

while true; do
  choice="$(zenity --width=300 --height=200 --list --column "" --title="Soulcaster" \
  "Soulcaster: Part I" \
  "Soulcaster: Part II" \
  "Exit ")"

  case "${choice}" in
    "Soulcaster: Part I" )
       echo "Soulcaster: Part I"
	if [ -d "SC1" ] && cd SC1
	./Soulcaster1.bin.x86_64
	exit
    ;;
    "Soulcaster: Part II" )
        echo "Soulcaster: Part II"
	if [ -d "SC2" ] && cd SC2
	./Soulcaster2.bin.x86_64
	exit
    ;;
    	*)
	echo "exit"
      break
    ;;
  esac
done
