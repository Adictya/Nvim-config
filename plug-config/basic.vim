" Basic stup
syntax enable
set scrolloff=5
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
set timeoutlen=500
set formatoptions-=cro
set autochdir
set splitbelow splitright
set timeoutlen=200
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set termguicolors
set foldlevel=200
autocmd BufWritePre * %s/\s\+$//e

" zo opens a fold at the cursor.
" zShift+o opens all folds at the cursor.
" zc closes a fold at the cursor.
" zm increases the foldlevel by one.
" zShift+m closes all open folds.
" zr decreases the foldlevel by one.
" zShift+r decreases the foldlevel to zero -- all folds will be open.
