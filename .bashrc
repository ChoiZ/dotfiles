# ~/.bashrc
# Last modified: 2013-03-05
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

export EDITOR=vim
export SVN_EDITOR=vim
export SVN_MERGE=vimdiff

# Colors: enable color support for ls and grep when possible
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  COLOR_TERM=yes
  export GREP_OPTIONS='--color=auto'
  ls --color -d . &>/dev/null 2>&1 \
    && alias ls='ls --group-directories-first --color=auto'
else
  COLOR_TERM=
  alias ls='ls --group-directories-first'
fi

# Aliases
[[ -s "~/.bash_aliases" ]] && source "~/.bash_aliases"

# Completion
[[ -s "~/.bash_completion" ]] && source "~/.bash_completion"

# Functions
[[ -s "~/.bash_functions" ]] && source "~/.bash_functions"

# SSH
[[ -s "~/.bash_ssh" ]] && source "~/.bash_ssh"
