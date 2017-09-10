" ______________________________________________________________ vundle starts
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Chiel92/vim-autoformat'
Plugin 'leafgarland/typescript-vim'
Plugin 'wlangstroth/vim-racket'
Plugin 'christoomey/vim-tmux-navigator'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ____________________________________________________________ vundle ends





let python_highlight_all=1
syntax on          " Enable syntax highlighting

" to search recusively for files
set path+=**

" to create a nice menu on tab completion
set wildmenu

" create the 'tags' file
" ^t for top of the tag stack and ^] for getting the definition
command! MakeTags !ctags -R .

" for auto complete
" ^n will autocomplete even lookind at dependencies
" ^x^n will autocomplete from only this file
" ^x^f will auto complete from only file names

" snippet manager
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


" to open buffer when current file is unsaved but changed
set hidden

" highlight the search
set hlsearch

" show command on the bottom of the screen
set showcmd

" indent the same as the line above
set autoindent

" show the row and column number
set number
set ruler

" when vim sees the characted <TAB> when it reads a file
set tabstop=4

" when the user uses <TAB>
set softtabstop=4

" search as characters are entered
set incsearch

" auto reads when a file is changed from the outside
set autoread

" indenting is 4 spaces
set shiftwidth=4

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Uncomment 2nd line from here to have bind ctrl B for building in python
" use c-b to build python and run
" nnoremap <buffer> <c-b> :exec '!clear;python' shellescape(@%, 1)<CR>

"use cn <f5> to toggel NERDTree
map <F5> :NERDTreeToggle<CR>

" dont have .swp
set noswapfile

" convert tabs to spaces
set expandtab

" jj becomes esc
imap jj <Esc>

"Enable folding
set foldmethod=indent
set foldlevel=99

if has('gui_running')
    set background=dark
        colorscheme solarized
    else
          colorscheme zenburn
      endif

" set vertical line at 80 char
set colorcolumn=80
set laststatus=2

" We can use different key mappings for easy navigation between splits to save
" a keystroke. So instead of ctrl-w then j, it’s just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
