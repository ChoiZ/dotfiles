# dotfiles

    git clone --recursive https://github.com/choiz/dotfiles.git "${ZDOTDIR:-$HOME}/.dotfiles"
    
    cd "${ZDOTDIR:-$HOME}/.dotfiles" && git checkout zsh
    
    git submodule init && git submodule update

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.dotfiles/rc/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    ln -s "${ZDOTDIR:-$HOME}"/.dotfiles/prezto "${ZDOTDIR:-$HOME}"/.prezto
    ln -s "${ZDOTDIR:-$HOME}"/.dotfiles/ssh "${ZDOTDIR:-$HOME}"/.ssh
    ln -s "${ZDOTDIR:-$HOME}"/.dotfiles/vim "${ZDOTDIR:-$HOME}"/.vim
    ln -s "${ZDOTDIR:-$HOME}"/.dotfiles/vim/vimrc "${ZDOTDIR:-$HOME}"/.vimrc

    for rcfile in "${ZDOTDIR:-$HOME}"/.dotfiles/git/^hooks(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    for rcfile in "${ZDOTDIR:-$HOME}"/.prezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

