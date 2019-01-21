# Michell Schilling
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bash_aliases="$HOME/.aliases"
[[ -e $bash_aliases ]] && . $bash_aliases

# normal text colors
FG_bla=$'\[\033[0;30m\]'     # black
FG_red=$'\[\033[0;31m\]'     # red
FG_gre=$'\[\033[0;32m\]'     # green
FG_yel=$'\[\033[0;33m\]'     # yellow
FG_blu=$'\[\033[0;34m\]'     # blue
FG_mag=$'\[\033[0;35m\]'     # magenta
FG_tur=$'\[\033[0;36m\]'     # turquoise
FG_gry=$'\[\033[0;37m\]'     # grey

# bold text colors
FGB_bla=$'\[\033[1;30m\]'    # black
FGB_red=$'\[\033[1;31m\]'    # red
FGB_gre=$'\[\033[1;32m\]'    # green
FGB_yel=$'\[\033[1;33m\]'    # yellow
FGB_blu=$'\[\033[1;34m\]'    # blue
FGB_mag=$'\[\033[1;35m\]'    # magenta
FGB_tur=$'\[\033[1;36m\]'    # turquoise
FGB_whi=$'\[\033[1;37m\]'    # white

# reset text to normal
FG=$'\[\033[0m\]'           # reset

# cursor positioning
Cs=$'\033[s'                                    # store cursor position
Cr=$'\033[u'                                    # restore cursor position

PS1="${FGB_red}\u${FGB_bla}@${FGB_blu}\H${FGB_bla}:${FGB_yel}\w\n${FGB_bla}\$${FG} "

