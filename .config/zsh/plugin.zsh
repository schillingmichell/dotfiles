ZSH_PLUGIN_DIR="${HOME}/.config/zsh/plugins"

ZSH_PLUGINS=(
  "https://github.com/zsh-users/zsh-syntax-highlighting.git"
  "https://github.com/zsh-users/zsh-autosuggestions.git"
)

for plugin in "${ZSH_PLUGINS[@]}"; do
  plugin_name="${plugin%*.git}"
  plugin_name="${plugin_name##*/}"
  plugin_path="${ZSH_PLUGIN_DIR}/${plugin_name}"
  [[ ! -d "$plugin_path" ]] && git clone "$plugin" "$plugin_path"
  source "${plugin_path}/${plugin_name}.zsh"
done
