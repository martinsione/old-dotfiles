let mapleader=" "

" Tab completion
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Move Code in Visual mode
vnoremap < <gv
vnoremap > >gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Buffers
nnoremap <silent> <leader>bd  <cmd>bd<CR>
nnoremap <silent> <TAB>       <cmd>bnext<CR>
nnoremap <silent> <S-TAB>     <cmd>bprevious<CR>
nnoremap <silent> <leader>= <C-W>=

" Save / source
nnoremap <silent> <C-s>         <cmd>w<CR>
nnoremap <silent> <leader>.     <cmd>e $MYVIMRC <CR>
nnoremap <silent> <leader><CR>  <cmd>source %<CR>

" Telescope
nnoremap <leader>p  <cmd><cr>
nnoremap <C-p>      <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>pg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>pb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>ph <cmd>lua require('telescope.builtin').help_tags()<cr>

" Tree
nnoremap <silent> <space>e :NvimTreeToggle<CR>

" Resize buffers with arrows
nnoremap <silent> <Up> :resize -2<CR>
nnoremap <silent> <Down> :resize +2<CR>
nnoremap <silent> <Left> :vertical resize -2<CR>
nnoremap <silent> <Right> :vertical resize +2<CR>

" Terminal window navigation
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
" tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
