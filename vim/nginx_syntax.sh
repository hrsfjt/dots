#!/bin/bash
if [ ! -e $HOME/.vim/syntax ]; then
  mkdir -p $HOME/.vim/syntax
fi
wget http://www.vim.org/scripts/download_script.php?src_id=19394 -O $HOME/.vim/syntax/nginx.vim
cat >~/.vim/filetype.vim <<EOF
au BufRead,BufNewFile /etc/nginx/*,/etc/nginx/conf.d/*,/usr/local/etc/nginx/* if &ft == '' | setfiletype nginx | endif
EOF
