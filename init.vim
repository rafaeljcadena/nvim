syntax on
"autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
set wildignore=*.o,*.obj,*.bak,*.exe
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set encoding=utf-8
"set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
set guicursor=
set nu
set hidden
set ruler
set cursorline
set laststatus=1
set tabstop=2
set shiftwidth=2
"set clipboard=unnamed
set wildmenu
set nomodeline
set signcolumn=yes
set inccommand=split
"let mapleader="/\\"

" Use case insensitive search, except when using capital letters
set ignorecase
set incsearch
set hlsearch
set smartcase
set showmatch
set scrolloff=8
set autoindent
set guifont=Fira\ Code:h14
set confirm

set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
set ttyfast
set autoread
" nnoremap <C-L> :let @/=''<cr> " clear search
nnoremap <leader>zf zfat
nnoremap <C-l> :nohlsearch<CR>
nnoremap Y y$
nnoremap <leader>g :Ge:<cr>
nnoremap <leader>d :Gvdiff<cr>
nnoremap <leader>gt :diffget //3
nnoremap <leader>go :diffget //2
" center view on the search result

" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

noremap n nzzzv
noremap N Nzzzv
"noremap <C-u> <C-u>zz
nnoremap <Leader>p :Files<CR>
nnoremap <C-P> :GFiles<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>l :BLines<CR>
nmap <leader>t :BTags<CR>
nmap <leader>w :BufOnly<CR>
nmap <C-f> :Rg<space>
nmap <leader>c :changes<CR>
nmap <leader>n :cn<CR>
nmap <leader>m :cp<CR>
nmap <silent> <leader>s :AutoSaveToggle<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :q<CR>
nnoremap <C-q> :bd<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
nmap - `.zz
nmap <Leader>r :%s///gc<Left><Left><Left>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
map <CR> O<Esc>
map <C-b> :NERDTreeToggle<CR>
inoremap kj <ESC>
"inoremap <leader>w <esc>v_di
inoremap <leader>d0 <c-o>"_d0<c-f>
inoremap <leader>c <c-o>"_c
"inoremap <leader>ce <c-o>"_ce
"inoremap <leader>cE <c-o>"_cE

nnoremap <leader>gc :G checkout 
nnoremap <leader>gP :G push 
nnoremap <leader>gp :G pull 
nnoremap <leader>gs :G status<cr>

inoremap <leader>x <c-o>"_x
inoremap <leader>d <c-o>"_d
inoremap <leader>B <c-o>B
inoremap <leader>b <c-o>b
inoremap <leader>W <c-o>W
inoremap <leader>w <c-o>w
inoremap <leader>e <c-o>e<c-o>a
inoremap <leader>E <c-o>E<c-o>a
inoremap <leader>o <c-o>o
inoremap <leader>O <c-o>O
inoremap <leader>a <c-o>a
inoremap <leader>A <c-o>A
inoremap <leader>S <c-o>"_S
inoremap <leader>I <c-o>"_I
inoremap <leader>f <c-o>f
inoremap <leader>F <c-o>F

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

vmap <Tab> >gv
vmap <S-Tab> <gv
set smartindent
set nocompatible              " be iMproved, required

let g:auto_save = 1
filetype off                  " required
"let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#bufferline#enabled = 1
"let airline#extensions#tabline#show_buffers = 3
" set the runtime path to include Vundle and initialize

"  call AutoHighlightToggle()
let b:ale_linters = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }


if (has("termguicolors"))
  set termguicolors
 endif
"colorscheme OceanicNext
let g:oceanic_next_terminal_italic = 1
let g:oceanic_next_terminal_bold = 1
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'gruvbox-community/gruvbox'
Plugin 'mhartington/oceanic-next'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin '907th/vim-auto-save'
Plugin 'preservim/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" São usados juntos
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-commentary'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
