export LANG="fr_FR.UTF-8"
export LC_ALL="fr_FR.UTF-8"
export PATH=/opt/bin:$PATH

xset -dpms
xset s 600

export TERM=xterm-256color
export EDITOR=vim
export VISUAL=vim

#tint2 &
parcellite &
#wicd-client --tray &
amixer
volumeicon &

function HDMIConnected {
    ! xrandr | grep "^HDMI" | grep disconnected
}

if HDMIConnected
then
    sh ~/.dotfiles/screenlayout/desktop.sh
fi

feh --bg-fill ~/.dotfiles/i3/wallpaper/ &

exec $1
