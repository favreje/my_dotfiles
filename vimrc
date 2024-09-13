syntax on
filetype indent plugin on

" Indention settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab 
set nosmartindent
 
" Misc settings
set signcolumn=yes
set scrolloff=4
set incsearch
set hidden
set noerrorbells
set nowrap
set relativenumber
set nu
set showcmd
set splitbelow splitright

"Fuzzy find configs
set nocompatible "limit search to the current project folder and children
set path+=**     "sets recursive searching
"set wildmode=longest,list,full
set wildmenu

" Netrw Settings
"autocmd FileType netrw setl buffhidden=wipe
let g:netrw_banner = 0          "suppresses display of banner
let g:netrw_liststyle = 3       "selects tree style listing
let g:netrw_browse_split = 4    "upon selection of file, place it in the current window

" these two lines seem to be neccscary for tmux sessions
set background=dark
set t_Co=256

" remap keys for more convenient Escape key
inoremap jj <Esc>
inoremap kj <Esc>

" enable mouse
set mouse=a

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'jpo/vim-railscasts-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" colorscheme codedark
" colorscheme OceanicNext
" colorscheme railscasts 
"colorscheme nord 
colorscheme codedark 

set colorcolumn=88
highlight Normal ctermbg = NONE 
highlight ColorColumn ctermbg=4
" highlight CursorLine ctermbg=237
highlight CursorLine ctermbg=17
set cursorline
highlight Cursor ctermbg=darkgrey

" Set color for line numbers and relative line numbers
" highlight CursorLineNr ctermfg =214 (also a cool color)
highlight CursorLineNr ctermfg =208
highlight LineNr ctermfg =166

" run this line after installing airline
" let g:airline_theme = 'gruvbox'


" Enable folding
set foldmethod=manual
set foldlevel=99

nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap <Leader>n :set rnu!<CR>
nnoremap <Leader>sp :setlocal spell! spelllang=en_us<CR>
nnoremap <Leader>t :vert term<CR><C-W>:vert resize 70<CR>
nnoremap <Leader>ex :20Lexplore<CR>
nnoremap <Leader>ve :vsplit$MYVIMRC<CR>
nnoremap <Leader>so :source $MYVIMRC<CR>
nnoremap <Leader>rc :edit $MYVIMRC<CR>

" Key sequence to switch buffers
execute "set <M-n>=\en"
execute "set <M-m>=\em"
noremap <M-n> :bn<CR>
noremap <M-m> :bp<CR>

augroup python
    autocmd!
    autocmd BufWinEnter *.py nnoremap <F3> :w<CR>:!python %:p<CR>
augroup END

" Removes automatic comment formatting 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Sets tabs to two characters for HTML files
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

set laststatus=2
set statusline=
set statusline+=[%n]
set statusline+=%M
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ \ %f
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ End:\ %L
set statusline+=\ 
