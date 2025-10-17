" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'                 " Status line with file info, mode, git branch
Plug 'dense-analysis/ale'                      " Real-time syntax checking and linting
Plug 'preservim/nerdtree'                      " File explorer - <leader>e to toggle, o to open, m for menu
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' } " Dark theme
Plug 'ap/vim-buftabline'                       " Visual buffer tabs - Tab/Shift+Tab to navigate
Plug 'junegunn/fzf.vim'                        " FZF integration for search
Plug 'airblade/vim-gitgutter'                  " Show git diff markers in sign column
Plug 'github/copilot.vim'                      " GitHub Copilot AI suggestions
Plug 'tpope/vim-commentary'                    " Commenting utility - <leader>cc to comment, <leader>cu to uncomment
Plug 'machakann/vim-highlightedyank'           " Highlight yanked text
Plug 'ludovicchabant/vim-gutentags'            " Automatic tag generation for code navigation
Plug 'ryanoasis/vim-devicons'                  " File type icons
call plug#end()

" Basic Settings
set number                                      " Show line numbers
set cursorline                                  " Highlight current line
set showmatch                                   " Show matching brackets
syntax on                                       " Enable syntax highlighting
set autoindent                                  " Auto-indent new lines
set tabstop=4                                   " Display Tab as 4 spaces wide
set shiftwidth=4                                " Indent width of 4 spaces
set expandtab                                   " Convert tabs to spaces
set hlsearch                                    " Highlight search results
set incsearch                                   " Show search matches as you type
set mouse=a                                     " Enable mouse support
set hidden                                      " Allow switching buffers without saving
set showtabline=2                               " Always show tab line

" Better search
set ignorecase                                  " Case insensitive search
set smartcase                                   " Case sensitive if uppercase used

" System clipboard integration
set clipboard=unnamed                           " Use system clipboard
set autoread                                    " Auto-reload files changed outside vim
set noswapfile

" File finding
set path+=**                                    " Search recursively in subdirectories
set wildmenu                                    " Command completion menu
"set wildignore+=*/node_modules/*,*/.git/*,*/dist/*,*.pyc  " Ignore these patterns

" FZF integration
set rtp+=/opt/homebrew/opt/fzf                  " Add fzf to runtime path

" File explorer
let g:netrw_banner = 0                          " Remove file browser banner
let g:netrw_liststyle = 3                       " Tree view style
let g:netrw_winsize = 25                        " Set explorer width to 25%

" Gutentags settings
let g:gutentags_project_root = ['.git']         " Use git root as project root
let g:gutentags_ctags_tagfile = '.tags'         " Tag file name
let g:gutentags_generate_on_new = 1             " Generate tags for new files
let g:gutentags_generate_on_missing = 1         " Generate tags if missing
let g:gutentags_generate_on_write = 1           " Update tags on file save

" Color scheme
colorscheme embark                              " Set color scheme

" Other plugin settings
let NERDTreeShowHidden=1                        " Show hidden files by default
let g:highlightedyank_highlight_duration = 100

" GitGutter settings
set updatetime=100                              " Update signs faster (default is 4000ms)
let g:gitgutter_sign_added = '+'                " Symbol for added lines
let g:gitgutter_sign_modified = '~'             " Symbol for modified lines
let g:gitgutter_sign_removed = '-'              " Symbol for removed lines
let g:gitgutter_sign_modified_removed = '~-'    " Symbol for modified and removed
let g:gitgutter_enabled = 1                     " Enable by default

" Leader key
let mapleader = " "                             " Set space as leader key

" Key mappings
inoremap <Esc> <Esc>:w<CR>
vnoremap <Esc> <Esc>:w<CR>
cnoremap <Esc> <Esc>:w<CR>
nnoremap <Esc> :w<CR>
nnoremap <leader>q :q<CR>                       " Quick quit
nnoremap <leader>e :NERDTreeToggle<CR>          " Toggle file explorer
nnoremap <leader>/ :nohl<CR>                    " Clear search highlighting
nnoremap <leader>r :e!<CR>                      " Reload current file
nnoremap <leader>p :FZF<CR>
nnoremap <leader>f :BLines<CR>
nnoremap <leader>s :Rg<CR>
nnoremap <leader>gd <C-]> 
nnoremap <leader>gb <C-t>

" Buffer navigation
nnoremap <leader>bd :bdelete<CR>                " Delete current buffer
nnoremap <Tab> :bnext<CR>                       " Next buffer
nnoremap <S-Tab> :bprev<CR>                     " Previous buffer

" Window navigation
nnoremap <C-h> <C-w>h                           " Move to left window
nnoremap <C-j> <C-w>j                           " Move to bottom window
nnoremap <C-k> <C-w>k                           " Move to top window
nnoremap <C-l> <C-w>l                           " Move to right window
nnoremap <leader>v <C-w>v                       " Split vertically
nnoremap <leader>h <C-w>s                       " Split horizontally
nnoremap <leader>x <C-w>c                       " Close current window

" Show whitespace characters
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮  " Define whitespace symbols
nnoremap <leader>l :set list!<CR>                   " Toggle whitespace visibility
nnoremap <leader>ll :let save_cursor = getpos(".") \| %s/\s\+$//e \| call setpos(".", save_cursor)<CR>

