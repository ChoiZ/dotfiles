export LANG="fr_FR.UTF-8"
export LC_ALL="fr_FR.UTF-8"
export PATH=/opt/bin:$PATH

xset -dpms
xset s 900

source ~/.dotfiles/screenlayout/dualscreen.sh &
source ~/.dotfiles/wallpaper.sh &

[[ -f ~/.dotfiles/.Xresources ]] && xrdb -merge ~/.dotfiles/.Xresources

if [ -n "$1" ]
then
    exec $1
else
    exec i3
fi
