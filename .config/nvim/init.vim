call plug#begin("~/.vim/plugged")

Plug 'windwp/nvim-autopairs'
Plug 'Pocco81/auto-save.nvim'
Plug 'preservim/vim-markdown'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
call plug#end()


lua << EOF
require("nvim-autopairs").setup {}
require("auto-save").setup {}
require('lualine').setup {
    options = { theme = 'nord' }
    }
EOF

set fillchars+=eob:\ 

let g:vim_markdown_folding_disabled = 1

set number
set showmatch
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set cursorline
set ttyfast
set wrap
set linebreak
set clipboard=unnamedplus
set cmdheight=0
