" See line number
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro signcolumn=no'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_winsize = 30
let g:netrw_altv = 1

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
        set signcolumn=no
    endif
endfunction

noremap <silent> <space>e :call ToggleNetrw()<CR>
