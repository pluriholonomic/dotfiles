GIT_PS1_SHOWDIRTYSTATE=true
source /usr/local/Cellar/git/2.16.3/etc/bash_completion.d/git-completion.bash
. /usr/local/Cellar/git/2.16.3/etc/bash_completion.d/git-prompt.sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\[\033[31m\][\A]\w\$(__git_ps1)\[\033[m\]\$ "
export PYTHONPATH=/Users/tarunchitra/Dropbox/arboretum/src/py:$PYTHONPATH
export BYZ_IP=$(head -n 1 ~/Dropbox/current_ip)
alias byz_ssh="ssh -p 7239 tarun@$BYZ_IP"
alias byz_ssh_tunnel="ssh -p 7239 -N -f -L127.0.0.1:8888:127.0.0.1:8889 tarun@$BYZ_IP"
alias byz_scp_recv="scp -P 7239 tarun@$BYZ_IP"

