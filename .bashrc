#!/bin/bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# aliases
alias ff='feh -F'
alias fs='feh --scale-down'
alias la='ls -la'
alias c='cat'
alias rfkill='sudo rfkill'
alias updatedb='sudo updatedb'
alias pacman='sudo pacman'
alias rvgl='oldpwd=$(pwd) && cd /opt/rvgl/ && ./rvgl ; cd $oldpwd'
alias n='nvim'
alias ls='ls --color=auto'
alias le='less'
# script calls
alias neoarch='bashcat /opt/scripts/bashcat-resources/archlogo.txt'
alias at='clear && neofetch && alacritty-themes'
#color alias 
alias alias="tput bold ; tput setaf 3 ; sh -c 'sleep 0.05 ; tput sgr0' & disown ; alias"

PROMPT_COMMAND='echo -ne "\033]0;$(tty)\007"'
PS1='\[\e[34m\] \W ϡ\[\e[0m\] '
export PS1='\[\e[34m\] \W ϡ\[\e[0m\] '

PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/opt/android-sdk/platform-tools:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/scripts:/home/$USER/.local/bin
