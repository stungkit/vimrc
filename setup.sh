#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
INSTALL_DIR=~/.vim/pack/default/start

mkdir -p ${INSTALL_DIR}

brew install \
	ack \
	ag

cp .vimrc ~/.vimrc

git clone https://github.com/sheerun/vim-polyglot ${INSTALL_DIR}/vim-polyglot
git clone https://github.com/easymotion/vim-easymotion ${INSTALL_DIR}/vim-easymotion
git clone https://github.com/morhetz/gruvbox.git ${INSTALL_DIR}/gruvbox
git clone https://github.com/mileszs/ack.vim ${INSTALL_DIR}/ack.vim
git clone https://github.com/scrooloose/nerdtree.git ${INSTALL_DIR}/nerdtree
git clone https://github.com/junegunn/fzf.vim ${INSTALL_DIR}/fzf.vim
git clone https://github.com/itchyny/lightline.vim ${INSTALL_DIR}/lightline

## Install coc.nvim
${DIR}/coc.nvim/setup.sh
