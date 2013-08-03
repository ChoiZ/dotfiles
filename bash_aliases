# ~/.bash_aliases
# Last modified: 2013-08-03
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias clr=clear

alias du='du -h --max-depth=1'
alias df='df -h'
alias dl='cd ~/Download'
alias doc='cd ~/Documents'
alias l='ls -ahlF'
alias ll='ls -ahlF'
alias lh='ls -xAF'
alias lv='ls -1AF'
alias mv='mv -i'
alias p=pwd
alias ps='ps -aux'
# Dev
alias g=git
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
