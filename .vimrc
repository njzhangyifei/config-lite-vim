set nocompatible

if has('win64')||has('win32')
    set shell=C:\WINDOWS\system32\cmd.exe
else
    "shouldn't need any config
endif

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ===VUNDLE===
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'fugitive.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/matchit.zip'
Plugin 'terryma/vim-expand-region'

if has('win64')||has('win32')
    Plugin 'iamcco/markdown-preview.vim'
endif

call vundle#end()            " required
" ===END of VUNDLE===

filetype plugin indent on    " required

syntax enable
set background=dark
if has('win64')||has('win32')
    if has('gui_running')
        set guifont=Consolas:h12
        let g:solarized_termcolors=16
        set lines=30 columns=100
        colorscheme solarized
    endif
else
    if has("unix")
        let s:uname = system("uname")
        if s:uname == "Darwin\n"
            set guifont=Monaco:h14
            let g:solarized_termcolors=16
        else
            set guifont=Monospace\ 12
        endif
    endif
    colorscheme solarized
    set t_Co=256
endif


""""relative numbering""""
"set relativenumber

set number
set ff=unix
set cindent
set laststatus=2
set shiftwidth=4
set sts=4
set tabstop=4
set expandtab
set backspace=indent,eol,start
set encoding=utf-8
"ieng6 does not support this
"set colorcolumn=80
set cursorline
set cursorcolumn
set incsearch
set hlsearch
set nowrap
set ruler
set title

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

"""""Airline""""
let g:airline_theme = "solarized"

"""""Syntastic""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height= 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_post_args = "--disable=W1234"
let g:syntastic_python_checkers = ['pylint']

"""""NERDCommenter"""""
"see https://github.com/scrooloose/nerdcommenter

"""""NERDTree""""
nmap <Leader>nt :NERDTreeToggle<CR>

"""""Tagbar"""""
nmap <Leader>tl :TagbarToggle<CR>
let tagbar_width=32

"""""Indent Guide"""""
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"""""Code Folding""""
"za toggle current folding
"zM close all the folding
"zR open all the folding
set foldmethod=indent
set foldmethod=syntax
set nofoldenable

""""Markdown Preview""""
if has('win64')||has('win32')
    let g:mkdp_path_to_chrome="C:/Program Files (x86)/Google/Chrome/Application/chrome.exe"
endif

""""Habit Breaking"""""
""""This disables all arrow keys""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""""Remove Trailing Whitespace""""
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
