call plug#begin("~/.vim/plugged")
Plug 'windwp/nvim-autopairs'
Plug 'Pocco81/auto-save.nvim'
Plug 'preservim/vim-markdown'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
call plug#end()

lua << EOF
require("nvim-autopairs").setup {}
require("auto-save").setup {}
require('lualine').setup {
    options = {
        theme = 'auto'
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_x = {'filetype'}
    }
}
EOF

set fillchars+=eob:\ 

let g:vim_markdown_folding_disabled = 1

autocmd FileType * call coc#refresh()
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

colorscheme nord

set number
set showmatch
set smartindent
set autoindent
set cindent
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
set termguicolors
