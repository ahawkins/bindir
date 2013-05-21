set nocompatible

" this must be turned off for vundle, but is renabled later
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Themes
Bundle  "tpope/vim-vividchalk"

" Language & Project specific plugins
Bundle  "timcharper/textile.vim"
Bundle  "vim-ruby/vim-ruby"
Bundle  "pangloss/vim-javascript"
Bundle  "taq/vim-rspec"
Bundle  "kchmck/vim-coffee-script"
Bundle  "tpope/vim-haml"
Bundle  "tpope/vim-markdown"
Bundle  "tpope/vim-rails"
Bundle  "nono/vim-handlebars"

" General plugins
Bundle  "scrooloose/nerdtree"
Bundle  "tpope/vim-fugitive"
Bundle  "tpope/vim-git"
Bundle  "tpope/vim-surround"
Bundle  "ddollar/nerdcommenter"
Bundle  "mileszs/ack.vim"
Bundle  "tpope/vim-endwise"
Bundle  "tpope/vim-repeat"
Bundle  "godlygeek/tabular"
Bundle  "tpope/vim-dispatch"

" Required by vundle
filetype plugin indent on
