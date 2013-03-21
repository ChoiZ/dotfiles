# bash_aliases
# Last modified: 2013-03-21
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

alias ..='cd ..'
alias ...='cd ../..'
alias …='cd ../..'
alias -- -='cd -'
alias c=cat
alias clr=clear
alias du='du -h --max-depth=1'
alias df='df -h'
alias dl='cd ~/Download'
alias doc='cd ~/Documents'
alias g=git
alias gr=grep
alias h=hg
alias he=head
alias l='ls -ahlF'
alias ll='ls -ahlF'
alias lh='ls -xAF'
alias lv='ls -1AF'
alias m=hg
alias mv='mv -i'
alias p=pwd
alias ph=php
alias ps='ps -aux'
alias py=python
alias s=svn
alias se=sed
alias t=tail
alias vi=vim
alias x=exit
alias :q=exit

## less indent = 4
alias less='less -x4'

## more display [Press space to continue, 'q' to quit.]
alias more='more -d'

## Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
