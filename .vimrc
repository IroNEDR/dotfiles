set nocompatible  
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'vimwiki/vimwiki'
Bundle 'flazz/vim-colorschemes'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'itchyny/lightline.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'pangloss/vim-javascript'
Bundle 'lervag/vimtex'
Bundle 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'stephpy/vim-yaml'
Plugin 'leafgarland/typescript-vim'

" vim indents HTML very poorly on it's own. This fixes a lot of that.
Bundle 'indenthtml.vim'

" I write markdown a lot. This is a good syntax.
Bundle 'tpope/vim-markdown'
            

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
syntax on
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
"'inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Space>
" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" For Latex:
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
autocmd FileType tex nmap <buffer> <C-T> :!latexmk -pdf %<CR>

" TMUX

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-l> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-h> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

set guifont=Fira\ Code\ Regular

if !has('gui_running')
  set t_Co=256
endif
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

set guifont=Fira\ Code\ Regular
