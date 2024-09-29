#!/usr/bin/env bash

# minimal setup for bashrc
if [ -f ~/.bashrc ]; then
	echo '
### EXPORT ###
export EDITOR='nvim'
export VISUAL='nvim'
export HISTCONTROL=ignoreboth:erasedups
export PAGER='most'

alias exa='exa -aloh --icons=always --group-directories-first'
alias update="sudo apt update && sudo apt upgrade"
alias sb="source ~/.bashrc"
alias cd..="cd .."
alias audio="pactl info | grep 'Server Name'"
alias upd="sudo apt update -y && sudo apt upgrade -y"
alias mfs="sudo mount -t nfs 192.168.0.120:/home/bojanstrko/mnt/Toshiba2 ~/nfs/Toshiba2"
alias nv="nvim"
alias snv="sudo -E -s nvim"
alias nb="nv ~/.bashrc"
alias nk="nv ~/.config/kitty/kitty.conf"
alias cp="cp -r"
alias mkdir="mkdir -p"
alias x="exit"
alias chmo="chmod +x"
alias ff="fastfetch"
alias probe="sudo -E hw-probe -all -upload"
alias nenvironment="sudo $EDITOR /etc/environment"
alias gc="git clone"
alias ga="git add ."
alias gm="git commit -m"
alias gp="git push"
alias ssn="sudo shutdown now"
alias sr="sudo reboot"' | tee -a ~/.bashrc
fi
