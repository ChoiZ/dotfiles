#/usr/bin/zsh

alias zalias="vim ~/.dotfiles/zsh/aliases.zsh"

# Aliases
alias c=clear
alias clr=clear
alias d=docker
alias d-c="docker-compose"
alias du='du -h'
alias df='df -h'
alias dl='~/Téléchargements'
alias g=git
alias gitdir='echo `git rev-parse --git-dir`'
alias h=~
alias l=ls
alias p=php
alias py=python
alias ps='ps -aux'
alias v=vim
alias vi=vim
alias va="vagrant"

alias tree='tree -C' # enable color on tree
alias less='less -x4' # mess indent = 4
alias more='more -d' # more display [Press space to continue, 'q' to quit.]

# network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias git_branch="~/.dotfiles/git/git_branch.sh"
alias pullrequest="~/.dotfiles/git/pullrequest.sh"