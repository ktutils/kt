# Options
if [ ! -d $HOME/.cache/zsh ]; then
	mkdir $HOME/.cache/zsh
fi
export ZSH_CACHE_DIR=$HOME/.cache/zsh

setopt AUTO_PARAM_SLASH # add slash after dir completion
setopt HIST_VERIFY # confirm history call

# Components
ZSH_CONFIG_DIR="$HOME/.config/zsh"

source $ZSH_CONFIG_DIR/functions.sh
source $ZSH_CONFIG_DIR/aliases.sh

export PATH="$PATH:$ZSH_CONFIG_DIR/scripts"

# Completion
source $ZSH_CONFIG_DIR/completion.sh

# Correction
source $ZSH_CONFIG_DIR/correction.sh

# Appearance
source $ZSH_CONFIG_DIR/appearance.sh

# History
export HISTSIZE=100000
export HISTFILE="$ZSH_CACHE_DIR/history"
export SAVEHIST=$HISTSIZE

# Prompt
setopt PROMPT_SUBST
export PROMPT='$(pwd_abbreviation --zsh) \$ '

# Exports
source $ZSH_CONFIG_DIR/exports.sh
