# dotfiles

Config files for (bash, git, tmux & vim)

![screenshot](https://raw.github.com/ChoiZ/dotfiles/gh-pages/dotfiles.png)

## Setup

```bash
git clone https://github.com/ChoiZ/dotfiles.git ~/.dotfiles && cd ~/.dotfiles/ && git checkout bash && ./bootstrap.sh
```

## Setup Font

(execute as root)
```bash
cp ~/.dotfiles/fonts/Monaco-Powerline.otf /usr/share/fonts/
fc-cache -vf
```

## Setup GIT pre-commit

```
ln -s ~/.dotfiles/git/hooks/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

Enable PHP pre-commit check:
```bash
git config --global --add hooks.checkphp true
```

Enable Javascript pre-commit check:
```bash
git config --global --add hooks.checkjs true
```
