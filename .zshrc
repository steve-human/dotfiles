export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

fpath=(/usr/share/zsh/plugins $fpath)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
eval "$(/home/steve/.local/bin/mise activate zsh)"
