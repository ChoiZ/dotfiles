# dotfiles

Config files for (git, i3wm, ranger, terminator, tmux, vim, zsh)

![screenshot](https://raw.github.com/ChoiZ/dotfiles/gh-pages/dotfiles.png)

## Installed software

### Interface

+ **i3wm** _window manager_
+ **i3lock** _lock screen_
+ **Py3status** _status bar_ Python bar for i3wm (replace i3bar)

### Internet

+ **Firefox** _web browser_
    + **ColorZilla** _color extension_ Color picker, gradient generator and
    other colorful goodies.
    + **Firebug** _web developper extension_ Web development tools: edit debug
    and monitor CSS, HTML and JavaScript live.
    + **Focus Regainer Lite** _get focus_ Keep focus on embedded object.
    + **REST Easy** _Rest Client_ A simple REST client for Firefox.
    + **Wappalyzer** _Identifies software_ Detect JavaScript libraries, Web
    server (Apache, Nginx…) thanks to HTTP Headers or page content.
    + **Yslow** _Performance tool_ Make your pages faster thanks to Yslow.
+ **Google Chrome** _web browser_

### Media

+ **Clementine** _music player_ audio player
+ **Feh** _image viewer_
+ **Ffmpeg** _audio/video tool_
+ **Imagemagick** _image tool_
+ **Scrot** _screenshoter_
+ **Vlc** _media player_ audio and video player

### Programming

+ **Vim** _text editor_

### Terminal

+ **Dmenu** _dynamic menu_ application launcher
+ **Ranger** _file manager_ extensible file manager using vim keymaps
+ **Terminator** _terminal emulator_
+ **Tmux** _terminal multiplexer_
+ **Zsh** _shell_ powerfull shell

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
