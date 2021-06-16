# Install necessary packages = [graphic driver: xf86-video-intel (admgpu, nvidia, ...), display server: xorg, window manager: xorg-xinit (lightdm, lightdm-gtk-greeter, ...), monitor: bspwm, keyboard: sxhkd, menu: dmenu, background: nitrogen, compositor: picom, terminal: xfce4-terminal, browser: chromium, graphical tool: arandr, toolbar: polybar, sound: pulseaudio, utils: [ttf-font-awesome alsa-utils bash-completion]]
sudo pacman -Sy
sudo pacman -S --noconfirm xf86-video-intel xorg xorg-xinit bspwm sxhkd dmenu nitrogen picom xfce4-terminal chromium arandr ttf-font-awesome alsa-utils pulseaudio-alsa bash-completion

# Configuration packages = [keyboard hotkeys: $HOME/.config/sxhkd/sxhkdrc, monitor behaviors:$HOME/.config/bspwm/bspwmrc, grahpical display resolutions: $HOME/.screenlayout/display.sh, compositor: /etc/xdg/picom.conf (comment vsync = true;), backgrounds for nitrogen: /usr/share/backgrounds, xinit: $HOME/.xinitrc, terminal: $HOME/.bashrc]
# sxhkd
if [ -d $HOME/.config/sxhkd/ ]; then
	cp -rf .config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
else
	mkdir -p $HOME/.config/sxhkd/ &
	cp -rf .config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
fi
# bspwmrc
if [ -d $HOME/.config/bspwm/ ]; then
	cp -rf .config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
else
	mkdir -p $HOME/.config/bspwm/ &
	cp -rf .config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
fi
# arandr
if [ -d $HOME/.screenlayout/ ]; then
	cp -rf .screenlayout/display.sh $HOME/.screenlayout/display.sh &
	chmod +x $HOME/.screenlayout/display.sh
else
	mkdir -p $HOME/.screenlayout/ &
	cp -rf .screenlayout/display.sh $HOME/.screenlayout/display.sh &
	chmod +x $HOME/.screenlayout/display.sh
fi
# picom
if [ -d /ect/xdg/ ]; then
	sudo cp -rf ./etc/xdg/picom.conf /etc/xdg/picom.conf
else
	sudo mkdir -p /etc/xdg/ &
	sudo cp -rf ./etc/xdg/picom.conf /etc/xdg/picom.conf
fi
# nitrogen
if [ -d /usr/share/backgrounds/ ]; then
	sudo cp -rf ./usr/share/backgrounds/* /usr/share/backgrounds/
else
	sudo mkdir /usr/share/backgrounds/ &
	sudo cp -rf ./usr/share/backgrounds/* /usr/share/backgrounds/
fi
if [ -d $HOME/.config/nitrogen/ ]; then
	cp -rf .config/nitrogen/nitrogen.cfg $HOME/.config/nitrogen/nitrogen.cfg &
	cp -rf .config/nitrogen/bg-saved.cfg $HOME/.config/nitrogen/bg-saved.cfg
else
	mkdir -p $HOME/.config/nitrogen/ &
	cp -rf .config/nitrogen/nitrogen.cfg $HOME/.config/nitrogen/nitrogen.cfg &
	cp -rf .config/nitrogen/bg-saved.cfg $HOME/.config/nitrogen/bg-saved.cfg
fi
# xinit
cp ./.xinitrc $HOME/.xinitrc
# xfce4-terminal
if [ -d $HOME/.config/xfce4/terminal/ ]; then
	cp -rf .config/xfce4/terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc
else
	mkdir -p $HOME/.config/xfce4/terminal/ &
	cp -rf .config/xfce4/terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc
fi
# fix error tap on touchpad
if [ -d /etc/X11/xorg.conf.d/ ]; then
	sudo cp -rf etc/X11/xorg.conf.d/* /etc/X11/xorg.conf.d/
else
	sudo mkdir -p /etc/X11/xorg.conf.d/ &
	sudo cp -rf etc/X11/xorg.conf.d/* /etc/X11/xorg.conf.d/
fi
