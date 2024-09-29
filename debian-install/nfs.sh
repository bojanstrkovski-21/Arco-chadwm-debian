####!/usr/bin/env bash


# install nfs utils
sudo apt install -y \
nfs-kernel-server \
nfs-common

sleep 3

sudo systemctl start nfs-server

#######################################################
#  check if nfs-server is active                      #
#  sudo systemctl is-enabled nfs-server               #
#  sudo systemctl status nfs-server                   #
#######################################################
#  start nfs-server                                   #
#  sudo systemctl start nfs-server                    #
#######################################################
#  restart nfs-server                                 #
#  sudo systemctl restart nfs-server                  #
#######################################################
#  edit nfs-common                                    #
#  sudo vim  /etc/default/nfs-common                  #
#  NEED_STATD="no"                                    #
#  NEED_IDMAPD="yes"                                  #
#######################################################
#  edit nfs-kernel-server                             #
#  sudo vim  /etc/default/nfs-kernel-server           #
#  RPCNFSDOPTS="-N 2 -N 3"                            #
#  RPCMOUNTDOPTS="--manage-gids -N 2 -N 3"            #
#  then restart nfs-server service                    #
##########################################################################################################
#  now you can use                                                                                       #
#  sudo showmount -e [ipadress]                                                                          #
#  to show nfs shares from                                                                               #
#  and sudo mount -t nfs [ipadress]:[mountpoint from showmount -e command] [path to folder to mount to]  #
##########################################################################################################
