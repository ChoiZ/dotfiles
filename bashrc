# ~/.bashrc
# Last modified: 2013-08-03
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

export EDITOR=vim
export SVN_EDITOR=vim
export SVN_MERGE=vimdiff

# Colors: enable color support for ls and grep when possible
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  COLOR_TERM=yes
  export GREP_OPTIONS='--color=auto'
  ls --color -d . &>/dev/null 2>&1 \ && alias ls='ls --group-directories-first --color=auto'
else
  COLOR_TERM=
  alias ls='ls --group-directories-first'
fi

# Aliases
[[ -s ~/dotfiles/bash_aliases ]] && source ~/dotfiles/bash_aliases

# Completion
[[ -s ~/dotfiles/bash_completion ]] && source ~/dotfiles/bash_completion

# Git Completion
[[ -s ~/dotfiles/git-completion ]] && source ~/dotfiles/git-completion

# Functions
[[ -s ~/dotfiles/bash_functions ]] && source ~/dotfiles/bash_functions

# SSH
[[ -s ~/dotfiles/bash_ssh ]] && source ~/dotfiles/bash_ssh

# Colors
[[ -s ~/dotfiles/bash_colors ]] && source ~/dotfiles/bash_colors

# Add Git in prompt
[[ -s ~/dotfiles/git-prompt ]] && source ~/dotfiles/git-prompt

export PS1="\[$Green\]\t \[$Blue\]\u@\h \[$Yellow\]\[$Yellow\]\w\[\033[m\]\[$Purple\]\$(__git_ps1)\[$White\]\$ "
