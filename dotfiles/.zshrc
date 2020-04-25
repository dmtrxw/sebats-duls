# Oh My Zsh configuration

export ZSH="/Users/dimitri/.oh-my-zsh"
ZSH_THEME="minimal"

plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Start zsh in NORMAL mode
zle-line-init() {
  zle -K vicmd;
}
zle -N zle-line-init

zle_highlight=(default:bold)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
