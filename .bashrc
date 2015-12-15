#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bash_aliases="~/.bash_aliases"
[[ -e $bash_aliases ]] && . $bash_aliases

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
