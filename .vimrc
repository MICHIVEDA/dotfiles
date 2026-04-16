" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on
au bufnewfile,bufread *.md set ft=md
au bufreadpost *.md call md#setup("q") " where q is your leader key

" Turn syntax highlighting on.
syntax enable

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
"set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" relative line number
set rnu

" End of word on edge wraps around
set linebreak
set breakindent

" All Splits sent down
set splitbelow

set path+=**
set autoindent
" ---------------- PLUGINS ----------------
call plug#begin('~/.vim/plugged')

" Markdown
Plug 'hughbien/md-vim'

" LaTeX
Plug 'lervag/vimtex', { 'tag': 'v2.15' }

" Haskell syntax
Plug 'neovimhaskell/haskell-vim'

"Haskell Formatting
Plug 'sdiehl/vim-ormolu'
let g:ormolu_command = '/home/michi/.local/bin/ormolu'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }

" Nerdtree
Plug 'preservim/nerdtree'

Plug 'morhetz/gruvbox'

call plug#end()




"----------------- Gruvbox Configuration -----------------------
if has("termguicolors")
    set termguicolors
endif

colorscheme gruvbox
set background=dark

let g:gruvbox_italic=1
highlight Normal guibg=#181818 ctermbg=235

let NERDTreeShowHidden=1
