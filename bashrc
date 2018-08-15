GIT_PS1_SHOWDIRTYSTATE=true
source /usr/local/Cellar/git/2.16.3/etc/bash_completion.d/git-completion.bash
. /usr/local/Cellar/git/2.16.3/etc/bash_completion.d/git-prompt.sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\[\033[31m\][\A]\w\$(__git_ps1)\[\033[m\]\$ "
export PYTHONPATH=/Users/tarunchitra/Dropbox/arboretum/src/py:$PYTHONPATH
