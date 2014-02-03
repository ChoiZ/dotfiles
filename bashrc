# ~/.bashrc
# Last modified: 2014-01-03
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

export EDITOR=vim
export SVN_EDITOR=vim
export SVN_MERGE=vimdiff

# Aliases
[[ -s ~/dotfiles/bash_aliases ]] && source ~/dotfiles/bash_aliases

# Completion
[[ -s ~/dotfiles/bash_completion ]] && source ~/dotfiles/bash_completion

# Git Completion
[[ -s ~/dotfiles/git/git_completion ]] && source ~/dotfiles/git/git_completion

# Functions
[[ -s ~/dotfiles/bash_functions ]] && source ~/dotfiles/bash_functions

# SSH
[[ -s ~/dotfiles/bash_ssh ]] && source ~/dotfiles/bash_ssh

# Colors
[[ -s ~/dotfiles/bash_colors ]] && source ~/dotfiles/bash_colors

# Add Git in prompt
source ~/dotfiles/bash-git-prompt/gitprompt.sh
