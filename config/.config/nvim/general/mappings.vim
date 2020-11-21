"-----------------------------------------------------------------------
"---------------------- Basic Mappings ---------------------------------
"-----------------------------------------------------------------------

" Leader key
let mapleader=' '

" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Indent selected code with < / >
vnoremap < <gv
vnoremap > >gv

" Move block of code in visual mode with J/K
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Move between buffers with <TAB>
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Clear search highlighting
nnoremap <silent> s :noh <CR>

" Save with Ctrl + S
nnoremap <silent> <C-s> :w<CR>

" Delete a buffer with leader + bd
nnoremap <silent> <leader>bd :bdelete<CR>

" Go to $MYVIMRC
nnoremap <silent> <leader>. :e $MYVIMRC <CR>

" Balance windows
nnoremap <silent> <leader>= <C-W>=

"-----------------------------------------------------------------------
"---------------------- Plugins Keybindings-----------------------------
"-----------------------------------------------------------------------

" Fzf
nnoremap <silent> <leader>p :Files <CR>
nnoremap <silent> <leader>gf :GFiles <CR>
nnoremap <silent> <leader>bf :Buffer <CR>
nnoremap <silent> <leader>; :Commands <CR>

" Coc-Explorer
nnoremap <silent> <leader>e :CocCommand explorer<CR>

" Zen mode
nnoremap <silent> <leader>z :Goyo <CR>

"-----------------------------------------------------------------------
"---------------------- Window Navigation ------------------------------
"-----------------------------------------------------------------------

" Better window navigation
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" Terminal window navigation
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
