#!/usr/bin/env sh

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-prettier --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
# npm install coc-go --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod  # use fatih/vim-go
npm install coc-pyright --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-java --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-json --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-tsserver --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
# npm install coc-tabnine --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod  # use Plug 'codota/tabnine-vim'
npm install coc-git --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-vimlsp --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
