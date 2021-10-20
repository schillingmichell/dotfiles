# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

PATH=$(tr ':' '\n' <<<"$PATH" | grep -ve '^/mnt/c/opt/.*' | tr '\n' ':')
PATH="${HOME}/bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"
#PATH="/mnt/c/Program Files/Microsoft VS Code/bin:${PATH}"
#PATH="/mnt/c/Program Files/Docker/Docker/resources/bin:/mnt/c/ProgramData/DockerDesktop/version-bin:${PATH}"
export PATH

[[ -d ${HOME}/bin ]] && source ${HOME}/bin/functions/*.inc.sh

export DISPLAY=rtg:0.0
export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=1

if [[ -z $http_proxy && -n $(ip ad sh | egrep 'inet\ *10\.(151|212)\.') ]]; then
    proxy_host="http://194.55.109.155:80"
    #echo "setting proxy to '${proxy_host}'"
    export http_proxy="$proxy_host"
    export https_proxy="$proxy_host"
    export no_proxy="10.,172.19.,194.55.,localhost,.tba.de,.travelbasys.de"
fi

export EDITOR="nvim"

export ZSH=$HOME/.oh-my-zsh
if [[ ! -d "$ZSH" ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(virtualenv git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -f /opt/sag/.sagenv ]] && source /opt/sag/.sagenv >/dev/null
