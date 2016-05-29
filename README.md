# dotfiles

Config files for (git, i3wm, ranger, terminator, tmux, vim, zsh)

![screenshot](https://raw.github.com/ChoiZ/dotfiles/gh-pages/dotfiles.png)

## Installed software

### Interface

+ **i3wm** _window manager_
+ **py3status** _status bar_ Python bar for i3wm (replace i3bar)
+ **i3lock** _lock screen_

### Internet

+ **firefox** _web browser_
+ **google chrome** _web browser_

### Media

+ **clementine** _music player_ audio player
+ **feh** _image viewer_
+ **imagemagick** _image tool_
+ **ffmpeg** _audio/video tool_
+ **scrot** _screenshoter_
+ **vlc** _media player_ audio and video player

### Programming

+ **vim** _text editor_

### Terminal

+ **terminator** _terminal emulator_
+ **zsh** _shell_ powerfull shell
+ **tmux** _terminal multiplexer_
+ **dmenu** _dynamic menu_ application launcher
+ **ranger** _file manager_ extensible file manager using vim keymaps

## Setup

```
git clone https://github.com/ChoiZ/dotfiles.git ~/.dotfiles && cd ~/.dotfiles/ && git checkout zsh && ./bootstrap.sh
```

## Setup Font

(execute as root)
```
cp ~/.dotfiles/fonts/Monaco-Powerline.otf /usr/share/fonts/
fc-cache -vf
```

## Setup GIT pre-commit

```
ln -s ~/.dotfiles/git/hooks/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

Enable PHP pre-commit check:
```
git config --global --add hooks.checkphp true
```

Enable Javascript pre-commit check:
```
git config --global --add hooks.checkjs true
```
