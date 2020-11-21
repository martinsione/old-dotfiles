" let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro signcolumn=no'
let g:netrw_banner = 0          " Hide the banner
let g:netrw_liststyle = 3       " Tree view
let g:netrw_browse_split = 4    " Where to open the new buffer
let g:netrw_winsize = 30        " Size of netrw
let g:netrw_altv = 1            " Open split to the right
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

"Toggle function
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
		noremap <buffer> <C-l> <C-w>l
        " set signcolumn=no
    endif
endfunction

function! OpenToRight()
	:normal v
	let g:path=expand('%:p')
	execute 'q!'
	execute 'belowright vnew' g:path
	:normal <C-w>l
endfunction

function! OpenBelow()
	:normal v
	let g:path=expand('%:p')
	execute 'q!'
	execute 'belowright new' g:path
	:normal <C-w>l
endfunction

function! OpenTab()
	:normal v
	let g:path=expand('%:p')
	execute 'q!'
	execute 'tabedit' g:path
	:normal <C-w>l
endfunction

function! NetrwMappings()
		noremap <buffer> V :call OpenToRight()<cr>
		noremap <buffer> H :call OpenBelow()<cr>
		noremap <buffer> T :call OpenTab()<cr>
endfunction

augroup netrw_mappings
		autocmd!
		autocmd filetype netrw call NetrwMappings()
augroup END


noremap <silent> <space>e :call ToggleNetrw()<CR>
