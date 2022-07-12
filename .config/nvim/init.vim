syntax on

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.cache/nvim/undo
set undofile
set smartcase
set ignorecase
set incsearch
set mouse=a
set clipboard+=unnamedplus
set splitbelow
set splitright
set scrolloff=10
set sidescrolloff=8
set completeopt=menu,menuone,noselect
set pumheight=10
set signcolumn=yes
set nohlsearch
set exrc

call plug#begin(stdpath('data') . '/plugged')

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'

"snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'mattn/emmet-vim'

" color schemes
Plug 'morhetz/gruvbox'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

" autopairs
Plug 'windwp/nvim-autopairs'
Plug 'ur4ltz/surround.nvim'

" comments
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'numToStr/Comment.nvim'

" git
Plug 'tpope/vim-fugitive'

" formatter
Plug 'sbdchd/neoformat'

call plug#end()

colorscheme gruvbox

highlight Normal ctermbg=none

let mapleader = " "

nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>b :split<CR>

nnoremap <C-Up> :resize -2<CR>
nnoremap <C-Down> :resize +2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" open explorer
nnoremap <silent> <Leader>e :Lex 30<CR>

" buffers 
nnoremap <silent> <S-l> :bnext<CR>
nnoremap <silent> <S-h> :bprev<CR>

" visual - change indent
vnoremap < <gv
vnoremap > >gv

" move text
vnoremap <silent> <A-j> :move '>+1<CR>gv=gv
vnoremap <silent> <A-k> :move '<-2<CR>gv=gv

" don't copy replaced word
vnoremap <silent> p "_dP
nnoremap <silent> d "_d
nnoremap <silent> x "_x

lua require("config")

" use capital letters
:command! -bar -bang Q quit<bang>
:command W w

" telescope
nnoremap <silent> <C-p> :Telescope git_files previewer=false theme=dropdown<CR>
nnoremap <silent> <Leader>f :Telescope live_grep<CR>
nnoremap <silent> gr :Telescope lsp_references<CR>

" lsp keymaps
nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <Leader>lh :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <Leader>lws :lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> <Leader>lf :lua vim.diagnostic.open_float()<CR>
nnoremap <silent> <Leader>ln :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <Leader>lp :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <Leader>lca :lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <Leader>lrr :lua vim.lsp.buf.references()<CR>
nnoremap <silent> <Leader>lrn :lua vim.lsp.buf.rename()<CR>
inoremap <silent> <C-h> :lua vim.lsp.buf.signature_help()<CR>

" fugitive keymaps
nnoremap <silent> <Leader>gs :G <CR>
nnoremap <silent> <Leader>gc :G commit <CR>

" Neoformat
nnoremap <silent> <Leader>n :Neoformat <CR>
let g:neoformat_try_node_exe = 1

" Git
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

filetype plugin on
filetype indent plugin on
autocmd BufRead,BufEnter *.astro set filetype=astro

let g:user_emmet_install_global = 0
autocmd FileType html,php,astro,javascript,javascriptreact,typescript,typescriptreact EmmetInstall
