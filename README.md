# dotfiles

Config files for (bash, git, tmux)

![screenshot](https://raw.github.com/ChoiZ/dotfiles/gh-pages/screenshot.png)

## Setup

```bash
cd ~ && git clone git://github.com/ChoiZ/dotfiles.git && cd dotfiles && git submodule init && git submodule update
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/git/gitignore ~/.gitignore
```

(execute as root)
```bash
cp ~/dotfiles/Monaco-Powerline.otf /usr/share/fonts/
fc-cache -vf
```

## Mac OS 10
check the "osx" branch.

## You use tmux?
```bash
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

## Git User?
```bash
ln -s ~/dotfiles/git/hooks/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

### Enable PHP check
```bash
git config --global --add hooks.checkphp true
```

### Enable JS check
```bash
git config --global --add hooks.checkjs true
```

### Use git keywords like svn?

Add in your php files:

```php
<?php
/**
 * $Id$
 * $Date$
 * $File$
 * $Author$
 * $Revision$
 * $Source$
 */
```

Create a .gitattributes file in your repos

```bash
*.css filter=rcs-keywords
*.js filter=rcs-keywords
*.php filter=rcs-keywords
```
