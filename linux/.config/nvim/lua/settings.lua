-- vim.g => global variables
-- vim.b => buffer variables vim.o  => global options vim.wo => window options vim.bo => buffer options

-- Appearance
vim.o.pumheight     = 10
vim.o.showmode      = false
vim.o.termguicolors = true
vim.wo.cursorline   = true
vim.wo.nu           = true
vim.wo.rnu          = true
vim.wo.signcolumn   = 'yes'
vim.wo.wrap         = false

-- General
vim.o.backup      = false
vim.o.clipboard   = 'unnamedplus'
vim.o.cmdheight   = 2
vim.o.hidden      = true
vim.o.mouse       = 'a'
vim.o.scrolloff   = 8
vim.o.splitbelow  = true
vim.o.splitright  = true
vim.o.shortmess   = 'c'
vim.o.timeoutlen  = 500
vim.o.updatetime  = 100

-- Searching
vim.o.ignorecase  = true
vim.o.smartcase   = true
vim.o.wildignore  = '.git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**';
vim.o.wildignorecase = true

-- Buffer options
vim.bo.expandtab  = true
vim.o.shiftwidth = 0
vim.o.tabstop    = 2
vim.bo.shiftwidth = 0
vim.bo.tabstop    = 2
vim.bo.swapfile   = false

vim.g.netrw_dirhistmax = 0

vim.cmd[[autocmd BufWritePre * %s/\s\+$//e]]
vim.cmd[[autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}]]
