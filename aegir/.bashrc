#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias fastfetch="fastfetch --logo-type kitty-direct --logo-width 24 --logo-height 18 --logo ~/.config/fastfetch/logo.png"