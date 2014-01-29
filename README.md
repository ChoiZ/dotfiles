# dotfiles

Config files for (bash, git, screen, tmux, osx & zsh)

![screenshot](https://raw.github.com/ChoiZ/dotfiles/gh-pages/screenshot.png)

## Setup

```bash
cd ~ && git clone git://github.com/ChoiZ/dotfiles.git && cd dotfiles && git submodule init && git submodule update
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
```

### Git User?
```bash
cp ~/dotfiles/git_hooks/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

#### Enable PHP check
```bash
git config hooks.checkphp
```

#### Enable JS check
```bash
git config hooks.checkjs
```

### You use tmux?
```bash
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

### On OSX?
```bash
# osx
ln -s ~/dotfiles/osx ~/.osx
ln -s ~/dotfiles/bash_profile ~/.bash_profile && ~/.bash_profile
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
