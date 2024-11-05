# >>> bindkey tip: to discovery the code of your keys, execute "$ cat -v" and press the key, the code will be printed in your shell.

# use the ZLE (zsh line editor) in emacs mode. Useful to move the cursor in large commands
bindkey -e
# navigate words using Ctrl + arrow keys
# >>> CRTL + right arrow | CRTL + left arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# macosx override
if [[ "$OSTYPE" == "darwin"* ]]; then 
  # >>> OPT + right arrow | OPT + left arrow
  bindkey "^[^[[C" forward-word
  bindkey "^[^[[D" backward-word
fi

# search history using Up and Down keys
# >>> up arrow | down arrow
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# jump to the start and end of the command line
# >>> CTRL + A | CTRL + E
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
# >>> Home | End
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# navigate menu for command output
zstyle ':completion:*:*:*:*:*' menu select
bindkey '^[[Z' reverse-menu-complete

# delete characters using the "delete" key
bindkey "^[[3~" delete-char

# fzf alias: CTRL + SPACE (gadget parameters configured in the FZF_CTRL_T_COMMAND environment variable)
bindkey "^@" fzf-file-widget

