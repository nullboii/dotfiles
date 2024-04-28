call plug#begin("~/.vim/plugged")
Plug 'windwp/nvim-autopairs'
Plug 'Pocco81/auto-save.nvim'
Plug 'preservim/vim-markdown'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-surround'
call plug#end()


lua << EOF
require("nvim-autopairs").setup {}
require("auto-save").setup {}
require('lualine').setup { options = { theme = 'nord' } }
require'nvim-treesitter.configs'.setup {
  ensure_installed = "python",  -- Install maintained parsers
  highlight = {
    enable = true,  -- Enable syntax highlighting
  },
  indent = {
    enable = true,  -- Enable indenting
  },
  autotag = {
    enable = true,  -- Automatically close and rename HTML/XML tags
  },
  context_commentstring = {
    enable = true,  -- Enable commentstring for languages
  },
  rainbow = {
    enable = true,  -- Enable rainbow parentheses
  }
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
