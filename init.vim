
call plug#begin('~/.vim/plugged')

" Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-fakeclip'
Plug 'easymotion/vim-easymotion',
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-surround'
Plug 'connorholyday/vim-snazzy'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'rbgrouleff/bclose.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'airblade/vim-rooter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'

call plug#end()

" Basic Setup
source ~/.config/nvim/plug-config/basic.vim

" COC setup
source ~/.config/nvim/plug-config/coc.vim

" Keybindings setup file
source ~/.config/nvim/plug-config/keys.vim

" Windows clipboard sync setup file
source ~/.config/nvim/plug-config/clipboard.vim

" Theme setup
source ~/.config/nvim/plug-config/theme.vim

" Vim Airline setup
source ~/.config/nvim/plug-config/airline.vim
 
" Ranger Vim integration and setup
source ~/.config/nvim/plug-config/rnvimr.vim

" Startify setup
source ~/.config/nvim/plug-config/start-screen.vim

" Colorizer setup
lua require'plug-colorizer'

" Goyo setup for JRNL
source ~/.config/nvim/plug-config/goyo.vim

" EasyMotion Setup
map s <Plug>(easymotion-s2)



