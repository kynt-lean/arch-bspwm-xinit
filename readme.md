1.Install necessary packages = [graphic driver: xf86-video-intel (admgpu, nvidia, ...), display server: xorg, window manager: xorg-xinit (lightdm, lightdm-gtk-greeter, ...), monitor: bspwm, keyboard: sxhkd, menu: dmenu, background: nitrogen, compositor: picom, terminal: xfce4-terminal, browser: chromium, graphical tool: arandr, toolbar: polybar, utils: [neofetch, powerline, ttf-font-awesome, alsa-utils]]

2.Configuration packages = [keyboard hotkeys: $HOME/.config/sxhkd/sxhkdrc, monitor bars: $HOME/.config/polybar/config & $HOME/.config/polybar/launch.sh, monitor behaviors:$HOME/.config/bspwm/bspwmrc, grahpical display resolutions: $HOME/.screenlayout/display.sh, compositor: /etc/xdg/picom.conf (comment vsync = true;), backgrounds for nitrogen: /usr/share/backgrounds, xinit: $HOME/.xinitrc, terminal: $HOME/.bashrc]

# sxhkd
	cp ./.config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
# polybar
	cp ./.config/polybar/config $HOME/.config/polybar/config &
	cp ./.config/polybar/launch.sh $HOME/.config/polybar/launch.sh &
# bspwmrc
	cp ./.config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
# arandr
	cp ./.screenlayout/display.sh $HOME/.screenlayout/display.sh &
	chmod +x $HOME/.screenlayout/display.sh
# picom
	sudo cp ./etc/xdg/picom.conf /etc/xdg/picom.conf
# nitrogen
	sudo cp ./usr/share/backgrounds/* /usr/share/backgrounds/
	cp ./.config/nitrogen/nitrogen.cfg $HOME/.config/nitrogen/nitrogen.cfg &
	cp ./.config/nitrogen/bg-saved.cfg $HOME/.config/nitrogen/bg-saved.cfg
# xinit
	cp ./.xinitrc $HOME/.xinitrc
# neofetch & powerline
	cp ./.bashrc $HOME/.bashrc
# xfce4-terminal
	cp ./.config/xfce4/terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc
# fix error tap on touchpad
	sudo cp ./etc/X11/xorg.conf.d/50-libinput.conf /etc/X11/xorg.conf.d/50-libinput.conf
