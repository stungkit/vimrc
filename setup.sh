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


## Install coc.nvim
# Install latest nodejs
if [ ! -x "$(command -v node)" ]; then
	curl --fail -LSs https://install-node.now.sh/latest | sh
	export PATH="/usr/local/bin/:$PATH"
	# Or use apt-get
	# sudo apt-get install nodejs
fi

mkdir -p ~/.vim/pack/default/start
cd ~/.vim/pack/default/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -

# Copy extensions file
mkdir -p ~/.config/coc/extensions
cp package.json ~/.config/coc/extensions/package.json

# Install extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
	echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
