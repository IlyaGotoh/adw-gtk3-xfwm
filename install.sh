#!/usr/bin/env bash

printf %s "Copy theme to: 1) /usr/share/themes/ 2) ~/.themes/ 3) ~/.local/share/themes/ (default - 2): "
read choice

case $choice in
	1)
		sudo cp -rv ./adw-gtk3 /usr/share/themes/ && \
		sudo cp -rv ./adw-gtk3-dark /usr/share/themes/ && echo "Done."
	;;
	2)
		cp -rv ./adw-gtk3 $HOME/.themes/ && \
		cp -rv ./adw-gtk3-dark $HOME/.themes/ && echo "Done."
	;;
	3)
		cp -rv ./adw-gtk3 $HOME/.local/share/themes/ && \
		cp -rv ./adw-gtk3-dark $HOME/.local/share/themes/ && echo "Done."
	;;
	"")
		cp -rv ./adw-gtk3 $HOME/.themes/ && \
		cp -rv ./adw-gtk3-dark $HOME/.themes/ && echo "Done."
	;;
	*)
		echo "Invalid choice"
	;;
esac

