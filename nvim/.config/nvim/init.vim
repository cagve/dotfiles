" │ _   ___     _____ __  __    ____ ___  _   _ _____ ___ ____ │
" │| \ | \ \   / /_ _|  \/  |  / ___/ _ \| \ | |  ___|_ _/ ___|│
" │|  \| |\ \ / / | || |\/| | | |  | | | |  \| | |_   | | |  _ │
" │| |\  | \ V /  | || |  | | | |__| |_| | |\  |  _|  | | |_| |│
" │|_| \_|  \_/  |___|_|  |_|  \____\___/|_| \_|_|   |___\____|│
" │                                                            │
" └────────────────────────────────────────────────────────────┘

" General configuration
syntax on 
filetype plugin on
let mapleader=" "
let g:tex_flavor = "latex"

" Ignorar archivos
set wildignore+=**/.git/*

" Mappings
nnoremap <leader>r :source %<CR>
nnoremap j gj
nnoremap k gk
nnoremap so :e ~/.config/nvim/init.vim<CR>

" Pegar desde el buffer general
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" Insert empty line
noremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

nmap <leader>t :TagbarToggle<CR>

" Plugins
call plug#begin('/home/karu/.config/nvim/plugged/')
Plug 'nvim-lua/popup.nvim'                                  " Telescope plugins
Plug 'nvim-lua/plenary.nvim'                                " Telescope plugins
Plug 'nvim-telescope/telescope.nvim'                        " Telescope plugins
Plug 'kyazdani42/nvim-web-devicons'                         " Telescope plugins

Plug 'neovim/nvim-lspconfig'                                " LSP - server
Plug 'nvim-lua/completion-nvim'                             " LSP - server

Plug 'ThePrimeagen/harpoon'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter
Plug 'nvim-treesitter/playground'                           " Treesitter

Plug 'mhartington/oceanic-next'                             " Colorscheme
Plug 'gruvbox-community/gruvbox'

Plug 'lervag/vimtex'                                        " Funcionalidades para archivos tex

Plug 'majutsushi/tagbar'                                    " Tag manager
Plug 'tpope/vim-fugitive'                                   " Git manager
Plug 'tpope/vim-commentary'                                 " Comentar facil: <C-c>
Plug 'jiangmiao/auto-pairs'                                 " Parentesis, comiillas, etc automáticas
Plug 'tpope/vim-surround'                                   " Permite rodear y jugar con los paréntesis
Plug 'SirVer/ultisnips'                                     " Crear snips
Plug 'majutsushi/tagbar'                                    " Tag manager
Plug 'Yggdroot/indentLine'                                  " Lineas verticales
Plug 'psliwka/vim-smoothie'                                 " Hace que el scrool sea más suave
Plug 'tpope/vim-fugitive'                                   " Controlador comandos git hub
Plug 'godlygeek/tabular'                                    " Para alinear texto
Plug 'vimwiki/vimwiki'                                      " Plugin para crear una wiki
call plug#end()

fun! Testing()
	lua package.loaded['karu.karuplayground'] =nil
	lua require('karu.karuplayground').testing()
endfun

luafile	~/.config/nvim/lua/karu/lsp.lua
luafile	~/.config/nvim/lua/karu/treesitter.lua
luafile	~/.config/nvim/lua/karu/telescope.lua
" luafile ~/.config/nvim/lua/karu/statusbar.lua
