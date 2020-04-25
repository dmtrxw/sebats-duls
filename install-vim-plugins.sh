#!/bin/sh

# Installs pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
git clone https://github.com/ctrlpvim/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/mattn/emmet-vim ~/.vim/bundle/emmet-vim
git clone https://github.com/scrooloose/nerdcommenter ~/.vim/bundle/nerdcommenter
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/StanAngeloff/php.vim ~/.vim/bundle/php.vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/junegunn/vim-easy-align ~/.vim/bundle/vim-easy-align
git clone https://github.com/farfanoide/vim-facebook ~/.vim/bundle/vim-facebook
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter
git clone https://github.com/pangloss/vim-javascript ~/.vim/bundle/vim-javascript
git clone https://github.com/MaxMEllon/vim-jsx-pretty ~/.vim/bundle/vim-jsx-pretty
git clone https://github.com/plasticboy/vim-markdown ~/.vim/bundle/vim-markdown
git clone https://github.com/terryma/vim-multiple-cursors ~/.vim/bundle/vim-multiple-cursors
git clone https://github.com/rakr/vim-one ~/.vim/bundle/vim-one
git clone https://github.com/prettier/vim-prettier ~/.vim/bundle/vim-prettier
git clone https://github.com/honza/vim-snippets ~/.vim/bundle/vim-snippets
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/bronson/vim-trailing-whitespace ~/.vim/bundle/vim-trailing-whitespace
git clone https://github.com/posva/vim-vue ~/.vim/bundle/vim-vue

echo "Done!"
echo
