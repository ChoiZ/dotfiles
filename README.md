<h1>dotfiles</h1>

<p>Config files for (bash, git, mercurial, screen, tmux, osx & zsh)</p>

<h2>Setup</h2>

```bash
git clone git://github.com/ChoiZ/dotfiles.git ~/
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/hgignore ~/.hgignore
ln -s ~/dotfiles/hgrc ~/.hgrc
ln -s ~/dotfiles/screenrc ~/.screenrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

<h2>zsh enable?</h2>
```bash
# zsh
ln -s ~/dotfiles/zshrc ~/.zshrc
```

<h2>On osx?</h2>
```bash
# osx
ln -s ~/dotfiles/osx ~/.osx
```

<h2>Use git keywords like svn?</h2>

<p>Add in your php files:</p>

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

<p>Create a .gitattributes file in your repos</p>
```bash
*.css filter=rcs-keywords
*.js filter=rcs-keywords
*.php filter=rcs-keywords
```

