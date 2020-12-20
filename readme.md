# Install necessary packages = [graphic driver: xf86-video-intel (admgpu, nvidia, ...), display server: xorg, window manager: xorg-xinit (lightdm, lightdm-gtk-greeter, ...), monitor: bspwm, keyboard: sxhkd, menu: dmenu, background: nitrogen, compositor: picom, terminal: xfce4-terminal, browser: chromium, graphical tool: arandr, toolbar: polybar, utils: [neofetch, powerline, ttf-font-awesome, alsa-utils]]
pacman -Syu
pacman -S --noconfirm xf86-video-intel xorg xorg-xinit bspwm sxhkd dmenu nitrogen picom xfce4-terminal chromium arandr polybar neofetch powerline ttf-font-awesome alsa-utils

# Configuration packages = [keyboard hotkeys: $HOME/.config/sxhkd/sxhkdrc, monitor bars: $HOME/.config/polybar/config & $HOME/.config/polybar/launch.sh, monitor behaviors:$HOME/.config/bspwm/bspwmrc, grahpical display resolutions: $HOME/.screenlayout/display.sh, compositor: /etc/xdg/picom.conf (comment vsync = true;), backgrounds for nitrogen: /usr/share/backgrounds, xinit: $HOME/.xinitrc, terminal: $HOME/.bashrc]
# sxhkd
if [ -d "$HOME/.config/sxhkd/" ]; then
  cp ./.config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
else
  mkdir -p $HOME/.config/sxhkd/
  cp ./.config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
fi
# polybar
if [ -d "$HOME/.config/polybar/" ]; then
  cp ./.config/polybar/config $HOME/.config/polybar/config
  cp ./.config/polybar/launch.sh $HOME/.config/polybar/launch.sh
  chmod +x $HOME/.config/polybar/launch.sh
else
  mkdir -p $HOME/.config/polybar/
  cp ./.config/polybar/config $HOME/.config/polybar/config
  cp ./.config/polybar/launch.sh $HOME/.config/polybar/launch.sh
  chmod +x $HOME/.config/polybar/launch.sh
fi
# bspwmrc
if [ -d "$HOME/.config/bspwm/" ]; then
  cp ./.config/bspwm/bspwmrc $HOME/.config/bspwmrc
else
  mkdir -p $HOME/.config/bspwm/
  cp ./.config/bspwm/bspwmrc $HOME/.config/bspwmrc
fi
# arandr
if [ -d "$HOME/.screenlayout/" ]; then
  cp ./.screenlayout/display.sh $HOME/.screenlayout/display.sh
  chmod +x $HOME/.screenlayout/display.sh
else
  mkdir -p $HOME/.screenlayout/
  cp ./.screenlayout/display.sh $HOME/.screenlayout/display.sh
  chmod +x $HOME/.screenlayout/display.sh
fi
# picom
if [ -d "/etc/xdg/" ]; then
  cp ./etc/xdg/picom.conf /etc/xdg/picom.conf
else
  mkdir -p /etc/xdg/
  cp ./etc/xdg/picom.conf /etc/xdg/picom.conf
fi
# nitrogen
if [ -d "/usr/share/backgrounds/" ]; then
  cp ./usr/share/backgrounds/* /usr/share/backgrounds/
else
  mkdir /usr/share/backgrounds/
  cp ./usr/share/backgrounds/* /usr/share/backgrounds/
fi
# xinit
cp ./.xinitrc $HOME/.xinitrc
# neofetch & powerline
cp ./.bashrc $HOME/.bashrc
# xfce4-terminal
if [ -d "$HOME/.config/xfce4/terminal/" ]; then
  cp ./.config/xfce4/terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc
else
  mkdir -p $HOME/.config/xfce4/terminal/
  cp ./.config/xfce4/terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc
fi
# fix error tap on touchpad
if [ -d "/etc/X11/xorg.conf.d/" ]; then
  cp ./etc/X11/xorg.conf.d/50-libinput.conf /etc/X11/xorg.conf.d/50-libinput.conf
else
  mkdir -p /etc/X11/xorg.conf.d/
  cp ./etc/X11/xorg.conf.d/50-libinput.conf /etc/X11/xorg.conf.d/50-libinput.conf
fi
