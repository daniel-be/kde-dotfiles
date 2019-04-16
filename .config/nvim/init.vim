" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/deoplete-clangx'

" Initialize plugin system
call plug#end()

" Basic configuration
set mouse=a
set termguicolors
syntax on
set number
colorscheme onedark
set splitbelow
set tabstop=4
set softtabstop=0
set noexpandtab
set shiftwidth=4
" hi Normal guibg=NONE ctermbg=NONE

" Deoplete autocompletion
set completeopt+=noinsert
set completeopt+=noselect
set completeopt+=preview
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Up> pumvisible() ? "\<C-e><Up>" : "\<Up>"
inoremap <expr> <Down> pumvisible() ? "\<C-e><Down>" : "\<Down>"
inoremap <expr> <CR> pumvisible() ? "\<C-e><CR>" : "\<CR>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-s>"
let g:UltiSnipsListSnippets="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-Down>"
let g:UltiSnipsJumpBackwardTrigger="<C-Up>"

" tmux
set ttimeoutlen=0
