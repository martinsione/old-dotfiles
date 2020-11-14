let g:startify_custom_header = [
        \ ' ',
        \]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ ]
          " \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'a': '~/.config/alacritty/alacritty.yml' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'x': '~/.xinitrc' },
            \ { 's': '~/.config/nvim/plug-config/start-screen.vim' },
            \ { 't': '~/.config/tmux/tmux.conf' },
            \ { 'w': '~/storage/programming/webmaster' },
            \ { 'p': '~/.zprofile' },
            \ { 'z': '~/.config/zsh/.zshrc' },
            \ ]

            " \ '~/.config/dwm',

let g:startify_enable_special = 0
