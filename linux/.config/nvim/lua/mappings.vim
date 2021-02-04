let mapleader=" "
nnoremap <leader>   <Nop>
nnoremap <leader>p  <Nop>
nnoremap <leader>s  <Nop>

" Tab completion
inoremap <silent> <expr><TAB>   pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Move Code in Visual mode
vnoremap < <gv
vnoremap > >gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Buffers
nnoremap <silent> <TAB>       <cmd>bnext<CR>
nnoremap <silent> <S-TAB>     <cmd>bprevious<CR>
nnoremap <silent> <leader>bd  <cmd>bd<CR>

" Save / source
nnoremap <silent> <C-s>         <cmd>w<CR>
nnoremap <silent> <leader>.     <cmd>e $MYVIMRC <CR>
nnoremap <silent> <leader><CR>  <cmd>source %<CR>

" Telescope
nnoremap <silent> <C-p>      <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent> <leader>pg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <silent> <leader>pw <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> <leader>pb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent> <leader>ph <cmd>lua require('telescope.builtin').help_tags()<cr>

" Tree
nnoremap <silent> <C-n> :NvimTreeToggle<CR>

" Resize buffers
nnoremap <silent> <Up>    :resize -2<CR>
nnoremap <silent> <Down>  :resize +2<CR>
nnoremap <silent> <Left>  :vertical resize -2<CR>
nnoremap <silent> <Right> :vertical resize +2<CR>
nnoremap <silent> <leader>= <C-w>=

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

" Escape insert-mode
inoremap kj <esc>
inoremap jk <esc>

nnoremap <silent> <expr> <CR> {-> v:hlsearch ? ":nohl\<CR>" : "\<CR>"}()


" Map execute this line
function! s:executor() abort
  if &ft == 'lua'
    call execute(printf(":lua %s", getline(".")))
  elseif &ft == 'vim'
    exe getline(">")
  endif
endfunction
nnoremap <leader>x :call <SID>executor()<CR>

vnoremap <leader>x :<C-w>exe join(getline("'<","'>"),'<Bar>')<CR>
nnoremap <leader><leader>v :w<CR>:Vader %<CR>

" Execute this file
function! s:save_and_exec() abort
  if &filetype == 'vim'
    :silent! write
    :source %
  elseif &filetype == 'lua'
    :silent! write
    :luafile %
  endif

  return
endfunction
nnoremap <leader><leader>x :call <SID>save_and_exec()<CR>
