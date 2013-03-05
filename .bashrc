# ~/.bashrc
# Last modified: 2013-03-05
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

export EDITOR=vim
export SVN_EDITOR=vim
export SVN_MERGE=vimdiff

# Completion

## SSH auto-completion
# Note doesn't work with user@host (use "-l user").
if [[ -e ~/.ssh/known_hosts ]]; then
    complete -o default -W "$(cat ~/.ssh/known_hosts | sed 's/[, ].*//' | sort | uniq | grep -v '[0-9]')" ssh scp stfp
fi

# Aliases

# Directory operations
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'
alias p=pwd

## Colors: enable color support for ls and grep when possible
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  COLOR_TERM=yes
else
  COLOR_TERM=
fi

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

## Functions
[[ -s "~/.bash_functions" ]] && source "~/.bash_functions"
