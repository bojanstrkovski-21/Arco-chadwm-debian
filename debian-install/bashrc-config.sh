#!/usr/bin/env bash

# minimal setup for bashrc
if [ -f ~/.bashrc ]; then
	echo '
### EXPORT ###
export EDITOR='nvim'
export VISUAL='nvim'
export HISTCONTROL=ignoreboth:erasedups
export PAGER='most'

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# ALIASES
alias clean="clear; seq 1 $(tput cols) | sort -R | spark | /usr/games/lolcat"
alias exa='exa -aloh --icons=always --group-directories-first'
alias update="sudo apt update && sudo apt upgrade"
alias sb="source ~/.bashrc"
alias cd..="cd .."
alias audio="pactl info | grep 'Server Name'"
alias upd="sudo apt update -y && sudo apt upgrade -y"
alias hw="hwinfo --short"
alias howold="sudo lshw | grep -B 3 -A 8 BIOS"
alias xd="ls /usr/share/xsessions"
alias xdw="ls /usr/share/wayland-sessions"
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
alias neo="neofetch"
alias probe="sudo -E hw-probe -all -upload"
alias nenvironment="sudo $EDITOR /etc/environment"
alias gc="git clone"
alias ga="git add ."
alias gm="git commit -m"
alias gp="git push"
alias ssn="sudo shutdown now"
alias sr="sudo reboot"' | tee -a ~/.bashrc
fi
