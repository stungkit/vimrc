#!/usr/bin/env bash

set -euxo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
INSTALL_DIR=~/.vim/pack/default/start

rm -rf ${INSTALL_DIR}
mkdir -p ${INSTALL_DIR}

cp ${DIR}/.vimrc ~/.vimrc

git -C ${INSTALL_DIR} clone https://github.com/sheerun/vim-polyglot
git -C ${INSTALL_DIR} clone https://github.com/easymotion/vim-easymotion
git -C ${INSTALL_DIR} clone https://github.com/morhetz/gruvbox.git
git -C ${INSTALL_DIR} clone https://github.com/tpope/vim-vinegar.git
git -C ${INSTALL_DIR} clone https://github.com/junegunn/fzf.vim
git -C ${INSTALL_DIR} clone https://github.com/itchyny/lightline.vim
git -C ${INSTALL_DIR} clone https://github.com/terryma/vim-multiple-cursors.git
git -C ${INSTALL_DIR} clone https://github.com/tpope/vim-surround.git
git -C ${INSTALL_DIR} clone https://github.com/nathanaelkane/vim-indent-guides.git
git -C ${INSTALL_DIR} clone https://github.com/mechatroner/rainbow_csv.git
git -C ${INSTALL_DIR} clone https://github.com/maxbrunsfeld/vim-yankstack.git
git -C ${INSTALL_DIR} clone https://github.com/tpope/vim-fugitive.git
git -C ${INSTALL_DIR} clone https://github.com/terryma/vim-expand-region.git
git -C ${INSTALL_DIR} clone https://github.com/luochen1990/rainbow.git
git -C ${INSTALL_DIR} clone https://github.com/junegunn/goyo.vim.git
git -C ${INSTALL_DIR} clone https://github.com/mileszs/ack.vim
git -C ${INSTALL_DIR} clone https://github.com/tpope/vim-commentary.git
git -C ${INSTALL_DIR} clone https://github.com/christoomey/vim-tmux-navigator.git
git -C ${INSTALL_DIR} clone https://github.com/blueyed/vim-diminactive.git
git -C ${INSTALL_DIR} clone https://github.com/mhinz/vim-signify.git
git -C ${INSTALL_DIR} clone https://github.com/romainl/vim-qf.git
git -C ${INSTALL_DIR} clone https://github.com/camspiers/lens.vim
git -C ${INSTALL_DIR} clone https://github.com/ludovicchabant/vim-gutentags.git
git -C ${INSTALL_DIR} clone https://github.com/lifepillar/vim-mucomplete.git

git -C ${INSTALL_DIR} clone https://github.com/editorconfig/editorconfig-vim.git
cp ${DIR}/.editorconfig ~/.editorconfig

cp ${DIR}/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Install coc.nvim
# ${DIR}/coc.nvim/setup.sh

# Copy ~/.gitconfig extras
echo "Do not forget to copy the contents in .gitconfig-extra into ~/.gitconfig"
