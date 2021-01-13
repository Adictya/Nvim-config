call plug#begin('~/.vim/plugged')

" Automagically set indent per file
Plug 'tpope/vim-sleuth'
" Plug 'glepnir/indent-guides.nvim'
" Easily align shit
Plug 'junegunn/vim-easy-align'
" Get tabline and a better status line
Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'Adictya/nvcode-color-schemes.vim'
" Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
" Plug 'bling/vim-airline'
Plug 'tweekmonster/startuptime.vim'
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'wellle/targets.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-rooter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
" Plug 'mhinz/vim-signify'
Plug 'honza/vim-snippets'
" Plug 'sheerun/vim-polyglot'
Plug 'metakirby5/codi.vim'
Plug 'benmills/vimux'
Plug 'alvan/vim-closetag'
Plug 'kevinoid/vim-jsonc'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
" Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-repeat'
Plug 'vifm/vifm.vim'
Plug 'ChristianChiarulli/far.vim'
" Plug 'easymotion/vim-easymotion',
Plug 'vim-scripts/ReplaceWithRegister'
" Plug 'liuchengxu/vista.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'psliwka/vim-smoothie'
" Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'glepnir/galaxyline.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

lua require'gitsigns'.setup()
lua require'telescope'.load_extension('gh')

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

" " Vim Airline setup
" source ~/.config/nvim/plug-config/airline.vim

" Vim Buffer line setup
lua require'buffer-line'

" Neo Tree setup
source ~/.config/nvim/plug-config/neo-tree.vim

" Vim status line setup
" lua require'test'

" Ranger Vim integration and setup
" source ~/.config/nvim/plug-config/rnvimr.vim

" Vifm Vim integration
source ~/.config/nvim/plug-config/vifm.vim


" Startify setup
source ~/.config/nvim/plug-config/start-screen.vim

" Quickscope setup
source ~/.config/nvim/plug-config/sneak.vim

" Quickscope setup
source ~/.config/nvim/plug-config/quickscope.vim

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
" source ~/.config/nvim/plug-config/hardTime.vim

" Emmet Setup
source ~/.config/nvim/plug-config/emmet.vim

" luafile ~/.config/nvim/lua/indent-guides.lua

luafile ~/.config/nvim/lua/galaxy-line.lua
" luafile ~/.config/nvim/lua/evline.lua

" Source the vimrc file after saving it
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd FileType cpp let b:coc_pairs_disabled = ['<']
autocmd FileType vim set fo-=cro
