HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

source $HOME/.config/zsh/environment.zsh
source $HOME/.config/zsh/options.zsh
source $HOME/.config/zsh/bind.zsh
source $HOME/.config/zsh/alias.zsh
source $HOME/.config/zsh/plugin.zsh

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
