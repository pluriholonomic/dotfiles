
# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/tarunchitra/non-OSS/gcloud/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/tarunchitra/non-OSS/gcloud/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/tarunchitra/non-OSS/gcloud/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/tarunchitra/non-OSS/gcloud/google-cloud-sdk/completion.bash.inc'
fi

source ~/.bashrc

export CLICOLOR=1
export TERM=xterm-256color
export PATH="/usr/local/opt/llvm@5/bin:$PATH"
export PATH="~/miniconda2/bin:$PATH"
export VISUAL="/usr/local/bin/vim"
export EDITOR="$VISUAL"
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PYTHONPATH="$HOME/Dropbox/repos/byzmoto/build/src/python:$PYTHONPATH"

alias dscons="scons debug=1"
alias scons_clean="scons -c && rm -rf build && scons"
