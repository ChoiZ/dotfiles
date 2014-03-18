#!/usr/bin/env bash
app_name="dotfiles"
app_dir="$HOME/.dotfiles"
git_branch="master"
[ -z "$git_uri" ] && git_uri="https://github.com/ChoiZ/$app_name.git"

############################  BASIC SETUP TOOLS
msg() {
    printf '%b\n' "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
    msg "\e[32m[✔]\e[0m ${1}${2}"
    fi
}

error() {
    msg "\e[31m[✘]\e[0m ${1}${2}"
    exit 1
}

program_exists() {
    local ret='0'
    type $1 >/dev/null 2>&1 || { local ret='1'; }

    # throw error on non-zero return value
    if [ ! "$ret" -eq '0' ]; then
        error "$2"
    fi
}

############################ SETUP FUNCTIONS
lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
    ret="$?"
}

do_backup() {
    if [ -e "$2" ]; then
        today=`date +%Y%m%d_%s`
        for i in "$2"; do
            [ -e "$i" ] && [ ! -L "$i" ] && mv "$i" "$i.$today";
        done
        ret="$?"
        success "$1"
    fi
}

upgrade_repo() {
    msg "trying to update $1"

    if [ "$1" = "$app_name" ]; then
        cd "$app_dir" &&
        git pull origin "$git_branch"
    fi

    ret="$?"
    success "$2"
}

clone_repo() {
    program_exists "git" "To setup $app_name you need to setup Git."

    if [ ! -e "$app_dir" ]; then
        git clone --recursive -b "$git_branch" "$git_uri" "$app_dir"
        ret="$?"
        success "$1"
    else
        upgrade_repo "$app_name"    "Successfully updated $app_name"
    fi
}

create_backup() {
    do_backup   "Your old .bashrc has a suffix now and looks like .bashrc.`date +%Y%m%d_%s`" \
                "$HOME/.bashrc"

    do_backup   "Your old .bash_profile has a suffix now and looks like .bash_profile.`date +%Y%m%d_%s`" \
                "$HOME/.bash_profile"

    do_backup   "Your old .gitconfig has a suffix now and looks like .gitignore.`date +%Y%m%d_%s`" \
                "$HOME/.gitconfig"

    do_backup   "Your old .gitignore has a suffix now and looks like .gitignore.`date +%Y%m%d_%s`" \
                "$HOME/.gitignore"

    program_exists "vim" "To setup $app_name you need to setup Vim."

    do_backup   "Your old .vim has a suffix now and looks like .vim.`date +%Y%m%d_%s`" \
                "$HOME/.vim"

    do_backup   "Your old .vimrc has a suffix now and looks like .vimrc.`date +%Y%m%d_%s`" \
                "$HOME/.vimrc"

    do_backup   "Your old .gvimrc has a suffix now and looks like .gvimrc.`date +%Y%m%d_%s`" \
                "$HOME/.gvimrc"
}

create_symlinks() {
    endpath="$app_dir"

    lnif "$endpath/bashrc"          "$HOME/.bashrc"
    lnif "$endpath/bash_profile"    "$HOME/.bash_profile"
    lnif "$endpath/git/config"      "$HOME/.gitconfig"
    lnif "$endpath/git/ignore"      "$HOME/.gitignore"
    lnif "$endpath/vim"             "$HOME/.vim"
    lnif "$endpath/vim/vimrc"       "$HOME/.vimrc"

    ret="$?"
    success "$1"
}

############################ MAIN()

do_backup   "Your old .dotfiles has a suffix now and looks like .dotfiles.`date +%Y%m%d_%s`" \
            "$HOME/.dotfiles"

clone_repo  "Successfully cloned $app_name"

create_backup

create_symlinks "Setting up all symlinks"

msg             "\nThanks for installing $app_name."
msg             "© `date +%Y` http://www.choiz.fr"
