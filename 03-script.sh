# polybar
if [ -d "$HOME/.config/polybar/" ]; then
  cp -rf .config/polybar/config $HOME/.config/polybar/config
  cp -rf .config/polybar/launch.sh $HOME/.config/polybar/launch.sh
  chmod +x $HOME/.config/polybar/launch.sh
else
  mkdir -p $HOME/.config/polybar/
  cp -rf .config/polybar/config $HOME/.config/polybar/config
  cp -rf .config/polybar/launch.sh $HOME/.config/polybar/launch.sh
  chmod +x $HOME/.config/polybar/launch.sh
fi
# ibus-bamboo
if [ -d "$HOME/.config/ibus-bamboo/" ]; then
  cp -rf .config/ibus-bamboo/ibus-bamboo.config.json $HOME/.config/ibus-bamboo/ibus-bamboo.config.json
else
  mkdir -p $HOME/.config/ibus-bamboo/
  cp -rf .config/ibus-bamboo/ibus-bamboo.config.json $HOME/.config/ibus-bamboo/ibus-bamboo.config.json
fi
