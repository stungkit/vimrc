#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
INSTALL_DIR=~/.vim/pack/default/start

rm -rf ${INSTALL_DIR}
mkdir -p ${INSTALL_DIR}

brew install \
	ack \
	ag

cp .vimrc ~/.vimrc

git -C ${INSTALL_DIR} clone https://github.com/sheerun/vim-polyglot
git -C ${INSTALL_DIR} clone https://github.com/easymotion/vim-easymotion
git -C ${INSTALL_DIR} clone https://github.com/morhetz/gruvbox.git
git -C ${INSTALL_DIR} clone https://github.com/mileszs/ack.vim
git -C ${INSTALL_DIR} clone https://github.com/scrooloose/nerdtree.git
git -C ${INSTALL_DIR} clone https://github.com/junegunn/fzf.vim
git -C ${INSTALL_DIR} clone https://github.com/itchyny/lightline.vim
git -C ${INSTALL_DIR} clone https://github.com/terryma/vim-multiple-cursors.git
git -C ${INSTALL_DIR} clone https://github.com/tpope/vim-surround.git
git -C ${INSTALL_DIR} clone https://github.com/nathanaelkane/vim-indent-guides.git
git -C ${INSTALL_DIR} clone https://github.com/airblade/vim-gitgutter.git
git -C ${INSTALL_DIR} clone https://github.com/mechatroner/rainbow_csv.git
git -C ${INSTALL_DIR} clone https://github.com/maxbrunsfeld/vim-yankstack.git
git -C ${INSTALL_DIR} clone https://github.com/tpope/vim-fugitive.git
git -C ${INSTALL_DIR} clone https://github.com/terryma/vim-expand-region.git
git -C ${INSTALL_DIR} clone https://github.com/luochen1990/rainbow.git

git clone https://github.com/editorconfig/editorconfig-vim.git ${INSTALL_DIR}
cp ${DIR}/.editorconfig ~/.editorconfig

## Install coc.nvim
${DIR}/coc.nvim/setup.sh
