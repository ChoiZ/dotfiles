# ~/.bash_aliases
# Last modified: 2013-03-05
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'
alias du='du -h --max-depth=1'
alias df='df -h'
alias g=git
alias h=hg
alias l='ls -ahlF'
alias ll='ls -ahlF'
alias lh='ls -xAF'
alias lv='ls -1AF'
alias m=hg
alias p=pwd
alias s=svn
alias v=vim
alias vi=vim
alias :q=exit

## less indent = 4
alias less='less -x4'

## more display [Press space to continue, 'q' to quit.]
alias more='more -d'

## Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
