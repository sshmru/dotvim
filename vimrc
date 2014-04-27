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

Plugin 'tpope/vim-surround'
"exuberant ctags needed
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'terryma/vim-multiple-cursors'
"npm install
Plugin 'marijnh/tern_for_vim'
Plugin 'mhinz/vim-startify'
Plugin 'mbbill/undotree'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'moll/vim-node'
Plugin 'burnettk/vim-angular'

Plugin 'tpope/vim-speeddating'

Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'

Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neocomplete.vim'

"Plugin 'ahayman/vim-nodejs-complete'
Plugin 'briancollins/vim-jst'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'tpope/vim-markdown'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'myusuf3/numbers.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'groenewege/vim-less'
Plugin 'tristen/vim-sparkup'

"need 2 MAKE inside of vimproc
Plugin  'Shougo/vimproc.vim'
Plugin  'shougo/vimshell'


Plugin 'bling/vim-bufferline'


Plugin 'L9'
Plugin 'FuzzyFinder'


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
let mapleader="," " start shortcuts with coma
""""""""""""""""""""
set backspace=indent,eol,start " more powerful backspacing
set autoindent " always set autoindenting on
set smartindent " try to guess indentation
set textwidth=0 " Don't wrap words by default
set tabstop=4 " show tabs as 4 spaces
set softtabstop=4 " show tabs as 4 spaces
set shiftwidth=4 " shift tab width
set expandtab
set timeoutlen=600 " timeout for shortcuts
set hidden
set history=1000
set number

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

nnoremap <leader>c :VimShell -split<cr>
nnoremap <leader>cn :VimShellInteractive node<cr>
nnoremap <leader>cp :VimShellInteractive python<cr>

"beutify
nnoremap <leader>fjs :call JsBeautify()<cr>

" easy switching buffers in normal mode
nmap <A-PageDown> :bn<CR>
nmap <A-PageUp> :bp<CR>
"paste screws up many things, enable onyl when pasting
nnoremap <F1> :Startify<cr>
      let g:startify_session_dir = '~/.vim/.cache/sessions'
      let g:startify_change_to_vcs_root = 1
      let g:startify_show_sessions = 1
nnoremap <F2> :set invpaste paste?<CR>
    set pastetoggle=<F2>
    set showmode
map <F4> viwp <CR>
map <F5> <Leader>yw<c-w>h<Leader>pw 
map <F6> :TagbarToggle<CR>
map <F7> :NERDTreeToggle<CR>
"highlight is annoying 
map <F8> :noh<CR>
" make Y consistent with C and D. See :help Y.
nnoremap Y y$

nmap <silent> <C-k> <C-W><C-k>
nmap <silent> <C-j> <C-W><C-j>
nmap <silent> <C-h> <C-W><C-h>
nmap <silent> <C-l> <C-W><C-l>

 " reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" vertical paragraph-movement
nmap <C-K> {
nmap <C-J> }

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

"compiling less files with ,m
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ? "\<C-n>" : "\<TAB>")
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : ""
smap <expr><S-TAB> pumvisible() ? "\<C-p>" : ""

autocmd FileType css,styl,stylus setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,jade setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete


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
"neverness, molokai, mango, solarized-tomorrow, xoria256, dante
color jellybeans
set guifont=Droid\ Sans\ Mono
"transparent terminal
hi Normal ctermbg=NONE
"empty space transparent
hi NonText ctermfg=250 ctermbg=none
