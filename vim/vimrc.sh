#!/bin/bash
SCRIPT_DIR=$(
  cd $(dirname $0)
  pwd
)

if [ ! -e $HOME/.vimrc ]; then
  touch $HOME/.vimrc
fi
cat $SCRIPT_DIR/.vimrc >$HOME/.vimrc

# :for nginx syntax
if [ ! -e $HOME/.vim/syntax ]; then
  mkdir -p $HOME/.vim/syntax
fi
wget http://www.vim.org/scripts/download_script.php?src_id=19394 -O $HOME/.vim/syntax/nginx.vim
cat >~/.vim/filetype.vim <<EOF
au BufRead,BufNewFile /etc/nginx/*,/etc/nginx/conf.d/*,/usr/local/etc/nginx/* if &ft == '' | setfiletype nginx | endif
EOF

exit 0
