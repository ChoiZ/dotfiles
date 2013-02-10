# ~/.bashrc
# Last modified: 2013-02-10
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

export EDITOR=vim
export SVN_EDITOR=vim
export SVN_MERGE=vimdiff

# Aliases

# Directory operations
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

## Colors: enable color support for ls and grep when possible
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  COLOR_TERM=yes
else
  COLOR_TERM=
fi
##
if [ "$COLOR_TERM" ]; then
  export GREP_OPTIONS='--color=auto'
  ls --color -d . &>/dev/null 2>&1 \
    && alias ls='ls --group-directories-first --color=auto'
else
  alias ls='ls --group-directories-first'
fi

alias du='du -h --max-depth=1'
alias df='df -h'

## Ls
alias ll='ls -ahlF'
alias lh='ls -xAF'
alias lv='ls -1AF'

## less indent = 4
alias less='less -x4'

## more display [Press space to continue, 'q' to quit.]
alias more='more -d'

alias p=pwd

## Vim
alias v=vim
alias vi=vim
alias :q=exit

## Versionning
alias g=git
alias h=hg
alias m=hg
alias s=svn

## Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
