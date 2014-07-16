# ~/.bash_aliases
# Last modified: 2014-02-04
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias clr=clear

# Colors: enable color support for ls and grep when possible
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  COLOR_TERM=yes
  export GREP_OPTIONS='--color=auto'
  ls --color -d . &>/dev/null 2>&1 && alias ls='ls --group-directories-first --color=auto'
else
  COLOR_TERM=
  alias ls='ls --group-directories-first -ahlF'
fi

alias du='du -h --max-depth=1'
alias df='df -h'
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias repo='cd ~/Repos'
alias l='ls -ahlF'
alias ll='ls -ahlF'
alias lh='ls -xAF'
alias lv='ls -1AF'
alias tree='tree -C'
alias mv='mv -i'
alias p=pwd
alias ps='ps -aux'
# Dev
alias g=git
alias gitdir='echo `git rev-parse --git-dir`'
alias ph=php
alias py=python
# Vim
alias v=vim
alias vi=vim
alias :q=exit

## less indent = 4
alias less='less -x4'

## more display [Press space to continue, 'q' to quit.]
alias more='more -d'

## Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
