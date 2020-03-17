#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
INSTALL_DIR=~/.vim/pack/default/start
CONFIG_DIR=~/.config/coc/extensions

# Install latest nodejs
if [ ! -x "$(command -v node)" ]; then
	curl --fail -LSs https://install-node.now.sh/latest | sh
	export PATH="/usr/local/bin/:$PATH"
	# Or use apt-get
	# sudo apt-get install nodejs
fi

mkdir -p ${INSTALL_DIR}
cd ${INSTALL_DIR}
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -

# Copy settings file
cp ${DIR}/coc-settings.json ~/.vim/coc-settings.json

# Copy extensions file
mkdir -p ${CONFIG_DIR}
cp ${DIR}/package.json ${CONFIG_DIR}/package.json

# Install extensions
cd ${CONFIG_DIR}
if [ ! -f package.json ]
then
	echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
