set noswapfile
set incsearch
set nowrap
set undodir=~/.vim/undodir
set undofile
set smartcase
set hidden
set pumheight=10
set ruler
set cmdheight=2
set iskeyword
set mouse=a
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent
set laststatus=0
set number relativenumber
set cursorline
set background=dark
set noshowmode
set nobackup
set nowritebackup
set updatetime=300
set formatoptions-=cro
set autochdir
set splitbelow splitright

nnoremap ; :
nnoremap : ;

nnoremap R :<c-u>call append('.', '')<cr>:call append(line('.')-1, '')<cr>

nnoremap <c-J> :m+<cr>
nnoremap <c-K> :m-2<cr>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" colorscheme snaz

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'unblevable/quick-scope'
Plug 'tpope/vim-sleuth'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'sainnhe/edge'

call plug#end()
colorscheme gruvbox
