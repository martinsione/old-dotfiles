" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Essentials
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'           " GIT integration
    Plug 'tpope/vim-fugitive'               " GIT integration
    Plug 'tpope/vim-commentary'             " Better Comments
    Plug 'tpope/vim-surround'               " Change sorrounding tags
    Plug 'norcalli/nvim-colorizer.lua'      " Colorizer
    Plug 'mhinz/vim-startify'               " Start Screen
  "General
    Plug 'AndrewRadev/tagalong.vim'         " Auto change HTML tags
    Plug 'liuchengxu/vim-which-key'         " See what keys do
    Plug 'christoomey/vim-tmux-navigator'   " Navigate between tmux panes
    Plug 'luochen1990/rainbow'              " Rainbow brackets
    Plug 'tweekmonster/startuptime.vim'     " Test Startup time
  " Treesitter
    Plug 'sheerun/vim-polyglot'             " Better syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter'
  " Appearance
    Plug 'junegunn/goyo.vim'                " Zen mode
    Plug 'itchyny/lightline.vim'            " Status Line
    Plug 'ryanoasis/vim-devicons'           " Cool Icons
    Plug 'morhetz/gruvbox'                  " Gruvbox theme
    Plug 'christianchiarulli/nvcode-color-schemes.vim'

call plug#end()
