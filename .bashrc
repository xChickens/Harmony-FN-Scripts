# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
alias update='curl -LO https://harmony.one/wallet.sh && chmod u+x wallet.sh && ./wallet.sh -d && curl -LO https://harmony.one/node.sh && chmod u+x node.sh && curl -LO https://harmony.one/mystatus.sh && chmod u+x mystatus.sh'
alias run='sudo ./node.sh'
alias ranks='./rank.sh'
alias status='./mystatus.sh all'
alias stats='./stat.sh'
