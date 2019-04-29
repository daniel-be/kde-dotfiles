" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'

" Autocomplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'Shougo/deoplete-clangx'

" Initialize plugin system
call plug#end()

" Basic configuration
set mouse=a
set termguicolors
syntax on
set number
colorscheme onedark
set splitbelow
set expandtab
set tabstop=8
set softtabstop=0
set shiftwidth=8
" hi Normal guibg=NONE ctermbg=NONE
nnoremap <C-Down> <C-W>j
nnoremap <C-Up> <C-W>k
nnoremap <C-Left> <C-W>h
nnoremap <C-Right> <C-W>l

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Deoplete autocompletion
set completeopt-=preview
"let g:deoplete#enable_at_startup = 1
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <Up> pumvisible() ? "\<C-y><Up>" : "\<Up>"
"inoremap <expr> <Down> pumvisible() ? "\<C-y><Down>" : "\<Down>"
"inoremap <expr> <CR> pumvisible() ? "\<C-y><CR>" : "\<CR>"
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

" YCM
"let g:ycm_use_clangd = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_key_list_stop_completion = ['<C-e>']

" tmux
set ttimeoutlen=0
