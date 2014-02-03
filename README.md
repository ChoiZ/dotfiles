# dotfiles

Config files for (bash, git, tmux & osx)

![screenshot](https://raw.github.com/ChoiZ/dotfiles/gh-pages/screenshot.png)

## Setup

```bash
cd ~ && git clone git://github.com/ChoiZ/dotfiles.git && cd dotfiles && git submodule init && git submodule update
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/git/gitignore ~/.gitignore
ln -s ~/dotfiles/osx ~/.osx
ln -s ~/dotfiles/bash_profile ~/.bash_profile && ~/.bash_profile
```

### You use tmux?
```bash
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

### Git User?
```bash
ln -s ~/dotfiles/git/hooks/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

#### Enable PHP check
```bash
git config --global --add hooks.checkphp true
```

#### Enable JS check
```bash
git config --global --add hooks.checkjs true
```

## Use git keywords like svn?

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
