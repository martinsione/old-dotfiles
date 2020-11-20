" Leader key
let mapleader=' '

"------------------------- Basic Mappings ------------------------------

" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

vnoremap < <gv
vnoremap > >gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

nnoremap <silent> s :noh <CR>

nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <leader>bd :bdelete<CR>

"--------------------------- Window Navigation -------------------------

" Better window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
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

"-----------------------------------------------------------------------

" Go to $MYVIMRC
nnoremap <silent> <leader>. :e $MYVIMRC <CR>

" Fzf
nnoremap <silent> <leader>p :Files <CR>
nnoremap <silent> <leader>gf :GFiles <CR>
nnoremap <silent> <leader>bf :Buffer <CR>
nnoremap <silent> <leader>; :Commands <CR>

" NERDTree
nnoremap <silent> <leader>e :NERDTreeToggle <CR>

" Balance windows
nnoremap <silent> <leader>= <C-W>=

" Zen mode
nnoremap <silent> <leader>z :Goyo <CR>
