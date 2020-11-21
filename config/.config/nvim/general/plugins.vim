" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
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
    Plug 'luochen1990/rainbow'              " Rainbow brackets
    Plug 'tweekmonster/startuptime.vim'     " Test Startup time
  " Appearance
    Plug 'junegunn/goyo.vim'                " Zen mode
    Plug 'ryanoasis/vim-devicons'           " Cool Icons
    Plug 'itchyny/lightline.vim'            " Status Line
    Plug 'morhetz/gruvbox'                  " Gruvbox color plugin


  " Plugins I don't use anymore
    " Plug 'preservim/nerdtree'               " Grafical explorer
    " Plug 'prettier/vim-prettier', { 'do': 'yarn install' }  " Code Formmater
    " Plug 'psliwka/vim-smoothie'             " Smooth scroll
    " Plug 'sheerun/vim-polyglot'             " Better syntax highlighting
    " Plug 'tomasiser/vim-code-dark'          " VsCode color plugin
    " Plug 'vim-airline/vim-airline'          " Status line
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'nvim-lua/completion-nvim'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
