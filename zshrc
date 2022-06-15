# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Set default editor
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Use Vim-style key bindings in the terminal
set -o vi
bindkey -M viins 'kj' vi-cmd-mode

# Add scripts location to the PATH variable: If user ID is greater than or equal to
# 1000 and if ~/.local/bin/scripts exists and is a directory and if ~/.local/bin/scripts
# is not already in your $PATH then export ~/bin to your $PATH.
if [[ $UID -ge 1000 && -d $HOME/.local/bin/scripts && -z $(echo $PATH | grep -o $HOME/.local/bin/scripts) ]]
then
    export PATH="${PATH}:$HOME/.local/bin/scripts"
fi

# Set a cd path for tab completions
cdpath=(/ $HOME)
#
# Aliases
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias ll='ls -lah'
alias t='task'

