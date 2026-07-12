#!/usr/bin/env bash

printf %s "Install theme to: 1) /usr/share/themes/ 2) ~/.themes/ 3) ~/.local/share/themes/ (default - 2): "
read choice

case $choice in
	1)
		sudo cp -rv ./adw-gtk* /usr/share/themes/ && echo "Done."
	;;
	2)
		cp -rv ./adw-gtk* $HOME/.themes/ && echo "Done."
	;;
	3)
		cp -rv ./adw-gtk* $HOME/.local/share/themes/ && echo "Done."
	;;
	"")
		cp -rv ./adw-gtk* $HOME/.themes/ && echo "Done."
	;;
	*)
		echo "[1/2/3]?"
	;;
esac

