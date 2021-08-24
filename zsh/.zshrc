# prompt theme, https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# completion
if (( ! ${fpath[(I)/usr/local/share/zsh-completions]} )); then
  FPATH=/usr/local/share/zsh-completions:$FPATH
fi
autoload -U compinit
compinit

# Customize ...
