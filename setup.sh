#!/usr/bin/env bash

mkdir -p ~/.vim/pack/default/start

brew install ack

cp .vimrc ~/.vimrc

git clone https://github.com/sheerun/vim-polyglot ~/.vim/pack/default/start/vim-polyglot
git clone https://github.com/easymotion/vim-easymotion ~/.vim/pack/default/start/vim-easymotion
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox
git clone https://github.com/kien/ctrlp.vim ~/.vim/pack/default/start/ctrlp.vim
git clone https://github.com/mileszs/ack.vim ~/.vim/pack/default/start/ack.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/pack/default/start/nerdtree
git clone https://github.com/junegunn/fzf.vim ~/.vim/pack/default/start/fzf.vim

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

## Install coc.nvim
${DIR}/coc.nvim/setup.sh
