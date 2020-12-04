"-------------------- Vim mappings -------------------------------------
" Leader key
let mapleader=' '

" Indent selected code with < / >
vnoremap < <gv
vnoremap > >gv

" Move block of code in visual mode with J/K
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Clear search highlighting
nnoremap <silent> s :noh <CR>


"-------------------- Which key ----------------------------------------
nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :<C-u>call <SID>openWhichKeyInVisualMode()<CR>
xnoremap <silent> <C-P> :<C-u>call <SID>openVSCodeCommandsInVisualMode()<CR>

"-------------------- Better navigation --------------------------------
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>


" Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
xnoremap <expr> <C-/> <SID>vscodeCommentary()
nnoremap <expr> <C-/> <SID>vscodeCommentary() . '_'

" Commentary
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine


"-------------------- General ------------------------------------------
" Show commands
nnoremap <silent> <space>; :call VSCodeNotify('workbench.action.showCommands')<CR>

" Toggle activity bar
nnoremap <silent> <space>ua :call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<CR>

" Show minimap
nnoremap <silent> <space>m :call VSCodeNotify('editor.action.toggleMinimap')<CR>

" Search files
nnoremap <silent> <space>p :call VSCodeNotify('workbench.action.quickOpen')<CR>

" Zen mode
nnoremap <silent> <space>z :call VSCodeNotify('workbench.action.toggleZenMode')<CR>


"-------------------- Buffers ------------------------------------------
" View all open buffers
nnoremap <silent> <space>bb :call VSCodeNotify('workbench.action.showAllEditors')<CR>

" Close active buffer
nnoremap <silent> <space>bd :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

" Move buffers
nnoremap <silent> <space>h :call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
nnoremap <silent> <space>j :call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
nnoremap <silent> <space>k :call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
nnoremap <silent> <space>l :call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>

"Reopen closed buffer
nnoremap <silent> <space>bu :call VSCodeNotify('workbench.action.reopenClosedEditor')<CR>

" Open a new empty buffer
nnoremap <silent> <space>bN :call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>

" Navigation between buffers
nnoremap <silent> <S-TAB> :call VSCodeNotify('workbench.action.previousEditor')<CR>
nnoremap <silent> <TAB> :call VSCodeNotify('workbench.action.nextEditor')<CR>


"-------------------- Sidebar ------------------------------------------
" Toggle sidebar
nnoremap <silent> <space>e :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>

" Show file explorer
nnoremap <silent> <space>se :call VSCodeNotify('workbench.view.explorer')<CR>

" Show debug console
nnoremap <silent> <space>sd :call VSCodeNotify('workbench.debug.action.toggleRepl')<CR>

" Show souce control
nnoremap <silent> <space>sg :call VSCodeNotify('workbench.view.scm')<CR>

" Show output
nnoremap <silent> <space>so :call VSCodeNotify('workbench.action.output.toggleOutput')<CR>

" Show problem
nnoremap <silent> <space>sp :call VSCodeNotify('workbench.actions.view.problems')<CR>

" Show remote explorer
nnoremap <silent> <space>sr :call VSCodeNotify('workbench.view.remote')<CR>

" Show test
nnoremap <silent> <space>st :call VSCodeNotify('workbench.view.extension.test')<CR>

" Show extensions
nnoremap <silent> <space>sx :call VSCodeNotify('workbench.view.extensions')<CR>

"-------------------- Splits -------------------------------------------
nnoremap <silent> <space>- :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <silent> <space>v :call VSCodeNotify('workbench.action.splitEditor')<CR>
"-------------------- Windows -------------------------------------------
nnoremap <silent> <space>= :call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
nnoremap <silent> <space>wh :call VSCodeNotify('workbench.action.moveActiveEditorGroupLeft')<CR>
nnoremap <silent> <space>wj :call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
nnoremap <silent> <space>wk :call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
nnoremap <silent> <space>wl :call VSCodeNotify('workbench.action.moveActiveEditorGroupRight')<CR>
nnoremap <silent> <space>wx :call VSCodeNotify('workbench.action.closeAllGroups')<CR>

nnoremap <silent> <C-w>_ :<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

"-------------------- Open ---------------------------------------------
nnoremap <silent> <space>od :call VSCodeNotify('workbench.action.files.openFolder')<CR>
nnoremap <silent> <space>of :call VSCodeNotify('workbench.action.files.openFile')<CR>
nnoremap <silent> <space>or :call VSCodeNotify('workbench.action.openRecent')<CR>

"-------------------- Terminal ------------------------------------------
" Show terminal
nnoremap <silent> <space>tt :call VSCodeNotify('workbench.action.togglePanel')<CR>

" Focus the terminal
nnoremap <silent> <space>tT :call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>
