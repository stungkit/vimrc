#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
INSTALL_DIR=~/.vim/pack/default/start

mkdir -p ${INSTALL_DIR}

brew install \
	ack \
	ag

cp .vimrc ~/.vimrc

git clone https://github.com/sheerun/vim-polyglot ${INSTALL_DIR}
git clone https://github.com/easymotion/vim-easymotion ${INSTALL_DIR}
git clone https://github.com/morhetz/gruvbox.git ${INSTALL_DIR}
git clone https://github.com/mileszs/ack.vim ${INSTALL_DIR}
git clone https://github.com/scrooloose/nerdtree.git ${INSTALL_DIR}
git clone https://github.com/junegunn/fzf.vim ${INSTALL_DIR}
git clone https://github.com/itchyny/lightline.vim ${INSTALL_DIR}
git clone https://github.com/terryma/vim-multiple-cursors.git ${INSTALL_DIR}
git clone https://github.com/tpope/vim-surround.git ${INSTALL_DIR}
git clone https://github.com/nathanaelkane/vim-indent-guides.git ${INSTALL_DIR}

## Install coc.nvim
${DIR}/coc.nvim/setup.sh
