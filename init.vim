call plug#begin('~/.vim/plugged')

" Automagically set indent per file
Plug 'tpope/vim-sleuth'
" Easily align shit
Plug 'junegunn/vim-easy-align'
" Get tabline and a better status line
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'wellle/targets.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-rooter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
Plug 'unblevable/quick-scope'
Plug 'liuchengxu/vim-which-key'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-signify'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'metakirby5/codi.vim'
Plug 'benmills/vimux'
Plug 'alvan/vim-closetag'
Plug 'kevinoid/vim-jsonc'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-repeat'
Plug 'vifm/vifm.vim'
Plug 'ChristianChiarulli/far.vim'
Plug 'easymotion/vim-easymotion',
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
call plug#end()


" Basic Setup
source ~/.config/nvim/plug-config/basic.vim

" Fzf setup
source ~/.config/nvim/plug-config/fzf.vim

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
" source ~/.config/nvim/plug-config/rnvimr.vim

" Vifm Vim integration
source ~/.config/nvim/plug-config/vifm.vim


" Startify setup
source ~/.config/nvim/plug-config/start-screen.vim

" Quickscope setup
source ~/.config/nvim/plug-config/sneak.vim

" Colorizer setup
lua require'plug-colorizer'

" Goyo setup for JRNL
source ~/.config/nvim/plug-config/goyo.vim

" EasyMotion Setup
map ff <Plug>(easymotion-s2)

" Which key setup
source ~/.config/nvim/plug-config/whichKey.vim

" Float term setup
source ~/.config/nvim/plug-config/floaterm.vim

" Git setup
source ~/.config/nvim/plug-config/git.vim

" Codi setup
source ~/.config/nvim/plug-config/codi.vim

" Auto close pair setup
source ~/.config/nvim/plug-config/auto-close-tag.vim

" Markdown preview setup
source ~/.config/nvim/plug-config/markdown.vim

" Hard Time setup
source ~/.config/nvim/plug-config/hardTime.vim

" Emmet Setup
source ~/.config/nvim/plug-config/emmet.vim

" Source the vimrc file after saving it
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd FileType vim set fo-=cro
