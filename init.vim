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
set splitright
set laststatus=2
set noshowmode
set tabstop=2
set breakindent
set breakindentopt=shift:2
set showbreak=↳
set shiftwidth=2
"set clipboard=unnamed
set wildmenu
set nomodeline
set signcolumn=yes
set inccommand=split
let mapleader=","
" Use case insensitive search, except when using capital letters
set ignorecase
set incsearch
set smartcase
set showmatch
set scrolloff=8
set autoindent
set guifont=Fira\ Code:h14
set confirm
set history=500
set nohlsearch

set list
set backspace=indent,eol,start
set complete-=i

" set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\
set listchars=tab:>\ ,trail:·,extends:>,precedes:<,nbsp:+

set ttyfast
set autoread
" nnoremap <C-L> :let @/=''<cr> " clear search
cnoremap <leader><TAB> <TAB>

nnoremap <silent><leader>ab :!open -a Brave\ Browser<cr>
nnoremap <leader>ap :!open -a Spotify<cr>
nnoremap <leader>aw :!open -a Whatsapp<cr>
nnoremap <leader>ad :!open -a Discord<cr>
nnoremap <leader>an :!open -a Notion<cr>

nnoremap <leader><TAB> :bnext<cr>
nnoremap <TAB> <C-i><CR>
nnoremap <S-TAB> :bprevious<cr>
nnoremap <leader>zf zfat
nnoremap <C-l> :set nohlsearch!<CR>
nnoremap Y y$
nnoremap <silent><leader>gb :G blame<cr>
nnoremap <silent><leader>gg :Ge:<cr>
nnoremap <silent><leader>d :Gvdiff<cr>
nnoremap <leader>gt :diffget //3
nnoremap <leader>go :diffget //2
" center view on the search result

" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_

nnoremap <leader>d "_d
nnoremap <leader>D "_D
vnoremap <leader>d "_d
vnoremap <leader>D "_D

cnoremap <c-i> <cr>i
cnoremap <c-e> <cr>ea
cnoremap <c-c> <cr>"_c
cnoremap <leader>v <cr>v
cnoremap <leader>Y <cr>Y
cnoremap <leader>y <cr>y
cnoremap <leader>i <cr>i
cnoremap <leader>C <cr>"_C
cnoremap <leader>c <cr>"_c
cnoremap <leader>d <cr>"_d
cnoremap <leader>D <cr>"_D
cnoremap <leader>a <cr>a
cnoremap <leader>A <cr>A
cnoremap <leader>e <cr>ea
cnoremap <leader>E <cr>Ea
cnoremap <leader>s <cr>"_s
cnoremap <leader>S <cr>"_S
"
"noremap n nzzzv
"noremap N Nzzzv
"
"noremap <C-u> <C-u>zz
nnoremap <leader>/ /\<\><Left><Left>
nnoremap <silent><leader>[ :b#<CR>
nnoremap <silent><Backspace> :b#<CR>
nnoremap <leader>b :buffers<CR>:b<Space>
nnoremap <c-a> :ALEFix
nnoremap <Leader>p :Files<CR>
nnoremap <C-P> :GFiles<CR>
" nmap <leader>b :Buffers<CR>
nmap <leader>l :BLines<CR>
nmap <leader>t :BTags<CR>
nmap <silent><leader>w :BufOnly<CR>
nmap <C-f> :Rg<space>
nmap <leader>c :changes<CR>
nnoremap <leader>N :cfirst<CR>
nnoremap <leader>M :clast<CR>
nnoremap <leader>n :cn<CR>
nnoremap <leader>m :cp<CR>
nmap <silent> <leader>s :AutoSaveToggle<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-s>a :wa<CR>
" nnoremap <leader>q :q<CR>
nnoremap <silent><leader>q :bd<CR>
nnoremap <silent><Leader>f :NERDTreeFind<CR>
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
" inoremap kj <ESC>
"inoremap <leader>w <esc>v_di
inoremap <leader>d0 <c-o>"_d0<c-f>
inoremap <leader>c <c-o>"_c
inoremap <leader>C <c-o>"_C
"inoremap <leader>ce <c-o>"_ce
"inoremap <leader>cE <c-o>"_cE
nnoremap <c-e> 5<c-e>
nnoremap <c-y> 5<c-y>
nnoremap <leader>gc :G checkout
nnoremap <leader>gP :G push
nnoremap <leader>gp :G pull
nnoremap <leader>gs :G status<cr>
nnoremap <leader>gm :G merge

nnoremap ci( f(ci(
nnoremap ci{ f{ci{
nnoremap ci[ f[ci[

nnoremap <silent><leader>i( f(a
nnoremap <silent><leader>i{ f{a
nnoremap <silent><leader>i[ f[a

nnoremap <silent><leader>i) f)i
nnoremap <silent><leader>i} f}i
nnoremap <silent><leader>i[ f]i

inoremap <silent><leader>i) <c-o>f)
inoremap <silent><leader>i} <c-o>f}
inoremap <silent><leader>i[ <c-o>f]

" nnoremap <C-h> <C-w>
" nnoremap <C-l> <C-w>l
nnoremap <silent><leader>. :vertical resize +5<cr>
nnoremap <silent><leader>, :vertical resize -5<cr>

if empty(mapcheck('<C-U>', 'i'))
  inoremap <C-U> <C-G>u<C-U>
endif
if empty(mapcheck('<C-W>', 'i'))
  inoremap <C-W> <C-G>u<C-W>
endif

inoremap <leader>: <c-o>:
inoremap <leader>k <c-o>k
inoremap <leader>x <c-o>"_x
inoremap <leader>s <c-o>"_s
inoremap <leader>d <c-o>"_d
inoremap <leader>D <c-o>"_D
inoremap <leader>B <c-o>B
inoremap <leader>b <c-o>b
inoremap <leader>W <c-o>W
inoremap <leader>w <c-o>w
inoremap <leader>e <c-o>e<c-o>a
inoremap <leader>E <c-o>E<c-o>a
inoremap <leader>u <c-o>u
inoremap <leader>o <c-o>o
inoremap <leader>O <c-o>O
inoremap <leader>a <c-o>a
inoremap <leader>A <c-o>A
inoremap <leader>S <c-o>S
inoremap <leader>I <c-o>I
inoremap <leader>f <c-o>f
inoremap <leader>F <c-o>F
inoremap <leader>p <c-o>p
inoremap <leader>P <c-o>P
inoremap <leader>h <c-o>h
inoremap <leader>l <c-o>l
inoremap <leader>_ <c-o>_
inoremap <leader>y <c-o>y
inoremap <c-s> <esc><c-s>
inoremap <c-c> <ESC>

nnoremap x "_dl
nnoremap X "_dh
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
set smartindent
set nocompatible              " be iMproved, required

" Corrige caracteres inválidos quando copio para fora o NeoVim
let $LANG='en_US.UTF-8'

" let g:auto_save = 1
filetype off                  " required
"let g:airline#extensions#tabline#buffer_idx_mode = 1

" Se quiser voltar para o modo de buffers basta descomentar as 3 linhas abaixo
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#bufferline#enabled = 1
"let airline#extensions#tabline#show_buffers = 3
" set the runtime path to include Vundle and initialize

"  call AutoHighlightToggle()
let b:ale_linters = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], }
let g:ale_fix_on_save = 0

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

let g:indent_guides_enable_on_vim_startup = 1

" Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

"
" If you want :UltiSnipsEdit to split your window.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mhinz/vim-signify'
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
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'unblevable/quick-scope'

" São usados juntos
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-commentary'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Força os arquivos javascript a ficar com a syntax javascriptreact para
" funcionar a indentação correta
augroup javascript_folding
    au!
    au FileType javascript.jsx setlocal filetype=javascriptreact
augroup END
colorscheme gruvbox

highlight Cursor guifg=white guibg=Black
" highlight iCursor guifg=white guibg=DarkMagenta
set guicursor=n-v-c-i:block-blinkon100-Cursor
" set guicursor+=i:block-blinkon100-iCursor

silent function! OSX()
    return has('macunix')
endfunction
silent function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction
silent function! WINDOWS()
    return  (has('win32') || has('win64'))
endfunction
