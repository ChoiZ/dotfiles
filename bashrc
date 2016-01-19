# ~/.bashrc
# Last modified: 2016-01-19
# Author: François LASSERRE <choiz@me.com>
# License: GNU GPL http://www.gnu.org/licenses/gpl.html

export TERM=xterm-256color
export EDITOR=vim
export SVN_EDITOR=vim
export SVN_MERGE=vimdiff

[[ -s ~/.dotfiles/bash_aliases ]] && source ~/.dotfiles/bash_aliases
[[ -s ~/.dotfiles/bash_colors ]] && source ~/.dotfiles/bash_colors
[[ -s ~/.dotfiles/bash_completion ]] && source ~/.dotfiles/bash_completion
[[ -s ~/.dotfiles/bash_functions ]] && source ~/.dotfiles/bash_functions
#[[ -s ~/.dotfiles/bash_ssh ]] && source ~/.dotfiles/bash_ssh

[[ -s ~/.dotfiles/git/git_completion.bash ]] && source ~/.dotfiles/git/git_completion.bash
#[[ -s ~/.dotfiles/git/git_completion.zsh ]] && source ~/.dotfiles/git/git_completion.zsh
#[[ -s ~/.dotfiles/bash-git-prompt/gitprompt.sh ]] && source ~/.dotfiles/bash-git-prompt/gitprompt.sh
