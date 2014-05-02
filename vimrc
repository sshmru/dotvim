set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
""""""""""""""""""""
Plugin 'L9'
Plugin 'FuzzyFinder'

Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
"need 2 MAKE inside of vimproc
Plugin  'Shougo/vimproc.vim'
Plugin  'shougo/vimshell'


Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
"exuberant ctags needed
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'terryma/vim-multiple-cursors'
"npm install
Plugin 'mbbill/undotree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-speeddating'

Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'

"matching quotes n braces
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'myusuf3/numbers.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-endwise'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'godlygeek/tabular'

Plugin 'marijnh/tern_for_vim'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neocomplete.vim'

Plugin 'ahayman/vim-nodejs-complete'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'moll/vim-node'
Plugin 'burnettk/vim-angular'
Plugin 'briancollins/vim-jst'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tpope/vim-markdown'
Plugin 'wesQ3/vim-windowswap'
Plugin 'wavded/vim-stylus'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'tristen/vim-sparkup'



Plugin 'Lokaltog/vim-distinguished'
Plugin 'flazz/vim-colorschemes'
Plugin 'goatslacker/mango.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chriskempson/base16-vim'
" ...
" Get that filetype stuff happening
call vundle#end()
"filetype plugin indent on
filetype on
filetype plugin on
filetype indent on
set t_Co=256


""""""""""""""""""""
" interface/display
set nocompatible " use vim defaults instead of vi compatibility
set nofoldenable " oh how I hate folding
set wildmenu " show options for <tab>
set ruler " show the cursor position all the time
set showcmd " show (partial) command in status line
set showmatch " show matching brackets
set matchpairs+=<:> " make < and > match
set ignorecase " case insensitive matching
set smartcase " case sensitive matching on mixed case
set incsearch " incremental search
set hlsearch " highlight searches
set linebreak
set showbreak=>>>\ " nicer long line breaks, also see https://retracile.net/wiki/VimBreakIndent
set scrolloff=10 " show 10 lines of context (above and below)
set fillchars+=vert:\ " no bars in vertical split
set updatetime=300 " mostly for tagbar
set nowrap " wrapping is usually evil
set exrc " allow current directory .vimrc overrides
syntax on " syntax highlighting
let g:clipbrdDefaultReg = '+'
set backspace=indent,eol,start " more powerful backspacing
set autoindent " always set autoindenting on
set smartindent " try to guess indentation
set textwidth=0 " Don't wrap words by default
set tabstop=4 " show tabs as 4 spaces
set softtabstop=4 " show tabs as 4 spaces
set shiftwidth=4 " shift tab width
set expandtab
set timeoutlen=500 " timeout for shortcuts
set hidden
set history=1000
set number
"set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
""""""""""""""""""""


if has("gui_running") " GUI mode
    set guioptions-=T " remove useless toolbar
    set guifont=Droid\ Sans\ Mono
endif

" Add ignorance of whitespace to diff
set diffopt+=iwhite
""""""""""""""""""""

"gx opens stuff in browser, in my case, nightly
let g:netrw_browsex_viewer = 'firefox-trunk'
let g:nodejs_complete_config = {
			\  'max_node_compl_len': 15
			\}

set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

""""""""""""""""""""

let mapleader="," " start shortcuts with coma
map <Space> :

nnoremap <leader>ss :VimShell -split<cr>
nnoremap <leader>sn :VimShellInteractive node<cr>
nnoremap <leader>sp :VimShellInteractive python<cr>
"autocmd FileType python nnoremap <leader>cx :VimShell python %<cr>

"compiling less files with ,m
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

"beutify
nnoremap <leader>fjs :call JsBeautify()<cr>

" easy switching buffers in normal mode
nmap <A-PageDown> :bn<CR>
nmap <A-PageUp> :bp<CR>

"escape is too far to reach
inoremap ;; <ESC>`^

"normal mode insert line
nnoremap <CR> i<CR><Esc>k

" Fast savig
nmap <leader>. :w!<cr>
" sudo save
nmap <leader>.. :w !sudo tee > /dev/null %
nmap <leader>./ :wq!<cr>
nmap <leader>/ :q<cr>
nmap <leader>// :q!<cr>


nnoremap <F1> :Startify<cr>
      let g:startify_session_dir = '~/.vim/.cache/sessions'
      let g:startify_change_to_vcs_root = 1
      let g:startify_show_sessions = 1
"paste screws up many things, enable onyl when pasting
nnoremap <F2> :set invpaste paste?<CR>
    set pastetoggle=<F2>
    set showmode

map <F4> viwp <CR>

map <F6> :TagbarToggle<CR>
map <F7> :NERDTreeToggle<CR>
"highlight is annoying 
map <F8> :noh<CR>:redraw!<CR>

" make Y consistent with C and D. See :help Y.
nnoremap Y y$

" yank/paste to/from the OS clipboard
noremap <silent> <leader>y "+y
noremap <silent> <leader>Y "+Y
noremap <silent> <leader>p "+p
noremap <silent> <leader>P "+P

"window movement
nmap <silent> <C-k> <C-W><C-k>
nmap <silent> <C-j> <C-W><C-j>
nmap <silent> <C-h> <C-W><C-h>
nmap <silent> <C-l> <C-W><C-l>

" window resizing
nmap <S-Left> <C-w><
nmap <S-Down> <C-w>-
nmap <S-Up> <C-w>+
nmap <S-Right> <C-w>>

let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>wy :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>wp :call WindowSwap#DoWindowSwap()<CR>
nmap <leader>ww <Leader>wy<c-w>h<Leader>wp 

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" select what was just pasted
nnoremap <leader>v V`]

"split lines 
nnoremap S ha<CR><Esc>k$

" allow the . to execute once for each line of a visual selection + reselect
vnoremap . :normal .<CR>gv

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

"unimpaired plugin
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

""""""""""""""""""""
"let g:EasyMotion_leader_key = '<Leader>'
let g:airline_theme='powerlineish'
set laststatus=2

let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets,~/.vim/snippets'
let g:neosnippet#enable_snipmate_compatibility=1
let g:neocomplete#enable_at_startup=1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'
let g:neocomplete#enable_smart_case = 1


imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ? "\<C-n>" : "\<TAB>")
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : ""
smap <expr><S-TAB> pumvisible() ? "\<C-p>" : ""

autocmd FileType css,styl,stylus setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,jade setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType html,less,jade,css setlocal ts=2 sts=2 sw=2


"annoying swap files
set backupdir=~/.vim-swap
set directory=~/.vim-swap

if filereadable(glob("~/.vimrc.local"))
	    source ~/.vimrc.local
endif

"automatically load vimrc changes
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END


"integrating bufferline to airline
let g:bufferline_echo = 0
autocmd VimEnter *
  \ let &statusline='%{bufferline#refresh_status()}'
    \ .bufferline#get_status_string()
set background=dark     " you can use `dark` or `light` as your background
"neverness, molokai, mango, solarized-tomorrow, xoria256, dante, distinguished

"neat highlighting all occurrences of word under cursor
au! CursorMoved * set nohlsearch
au! CursorHold * set hlsearch | let @/='\<'.expand("<cword>").'\>'
set hlsearch

"cursor line highlight
set cul
hi CursorLine term=none cterm=none ctermbg=234

color jelleybeans
"transparent terminal
hi Normal ctermbg=NONE
"empty space transparent
hi NonText ctermfg=250 ctermbg=none 
":runtime! syntax/2html.vim<CR>
":TOhtml    generates html
"vim http://adres.com/  get page html
