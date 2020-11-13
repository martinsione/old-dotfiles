" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Coc
  " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
  " Git
    Plug 'airblade/vim-gitgutter'           " GIT integration
    Plug 'tpope/vim-fugitive'               " Best plugin ever
  " General
    Plug 'AndrewRadev/tagalong.vim'         " Auto change HTML tags
    Plug 'luochen1990/rainbow'              " Rainbow brackets
    Plug 'liuchengxu/vim-which-key'         " See what keys do
    Plug 'mhinz/vim-startify'               " Start Screen
    Plug 'norcalli/nvim-colorizer.lua'      " Colorizer
    Plug 'sheerun/vim-polyglot'             " Better syntax highlighting
    Plug 'tpope/vim-commentary'             " Better Comments
    Plug 'tpope/vim-surround'               " Change sorrounding tags
  " Appearance
    Plug 'junegunn/goyo.vim'                " Zen mode
    " Plug 'psliwka/vim-smoothie'             " Smooth scroll
    Plug 'ryanoasis/vim-devicons'           " Cool Icons
    Plug 'vim-airline/vim-airline'          " Status line
  " Themes
    Plug 'morhetz/gruvbox'                  " Gruvbox color plugin
    Plug 'tomasiser/vim-code-dark'          " VsCode color plugin

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
