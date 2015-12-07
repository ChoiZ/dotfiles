# dotfiles

Config files for (bash, git, tmux & vim)

![screenshot](https://raw.github.com/ChoiZ/dotfiles/gh-pages/dotfiles.png)

## Setup

```bash
git clone https://github.com/ChoiZ/dotfiles.git ~/.dotfiles && cd ~/.dotfiles/ && git checkout bash && ./bootstrap.sh
```

## Setup Monaco-Powerline font

(execute as root)
```bash
cp ~/.dotfiles/fonts/Monaco-Powerline.otf /usr/share/fonts/
fc-cache -vf
```

## Misc

If you are on Mac Os 10 check the "osx" branch.

If you use tmux:
```bash
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
```

If you use git:
```bash
ln -s ~/.dotfiles/git/hooks/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

If you want to enable PHP check hook:
```bash
git config --global --add hooks.checkphp true
```

If you want to enable Javascript check hook:
```bash
git config --global --add hooks.checkjs true
```

If you want to use git keywords like svn:

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

Create a ".gitattributes" file in your repos like:

```bash
*.css filter=rcs-keywords
*.js filter=rcs-keywords
*.php filter=rcs-keywords
```
