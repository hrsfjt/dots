# zsh completion
if (( ! ${fpath[(I)/usr/local/share/zsh-completions]} )); then
  FPATH=/usr/local/share/zsh-completions:$FPATH
fi
autoload -U compinit
compinit

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# golang
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export GOPATH="$HOME/go"

# pyenv 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# any
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/apr/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

