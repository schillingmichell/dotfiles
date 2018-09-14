export PATH=$(tr ':' '\n' <<<"$PATH" | grep -ve '^/mnt/.*' | tr '\n' ':')

export DISPLAY=:0.0

if [[ -z $http_proxy && -n $(ip ad sh | egrep 'inet\ *10\.(151|212)\.') ]]; then
    proxy_host="http://194.55.109.155:80"
    echo "setting proxy to '${proxy_host}'"
    export http_proxy="$proxy_host"
    export https_proxy="$proxy_host"
    export no_proxy="10.*,172.19.*,194.55.*,localhost"
fi

export EDITOR="nvim"

export ZSH=$HOME/.oh-my-zsh
if [[ ! -d "$ZSH" ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

ZSH_THEME="geometry/geometry"
plugins=(virtualenv git exec_time hg zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
