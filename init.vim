call plug#begin('~/.vim/plugged')
Plug 'hoob3rt/lualine.nvim'
" Automagically set indent per file
Plug 'tpope/vim-sleuth'
" Easily align shit
Plug 'junegunn/vim-easy-align'
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'Adictya/nvcode-color-schemes.vim'
" Plug 'folke/tokyonight.nvim'
" Plug 'ChristianChiarulli/nvcode-color-schemes.vim'

" Plug 'bling/vim-airline'
" Plug 'tweekmonster/startuptime.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/goyo.vim'
Plug 'wellle/targets.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-rooter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
" Plug 'justinmk/vim-sneak'
Plug 'phaazon/hop.nvim'
Plug 'unblevable/quick-scope'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
" Plug 'chemzqm/vim-jsx-improve'
Plug 'metakirby5/codi.vim'
Plug 'benmills/vimux'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
" Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'p00f/nvim-ts-rainbow'
Plug 'adelarsq/vim-matchit'
Plug 'kevinoid/vim-jsonc'
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
Plug 'glacambre/firenvim'
Plug 'tpope/vim-repeat'
" Plug 'vifm/vifm.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'ChristianChiarulli/far.vim'
" Plug 'easymotion/vim-easymotion',
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'gennaro-tedesco/nvim-peekup'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
" Plug 'ryanoasis/vim-devicons'
" Try this shiz out
" turbio/bracey.vim  -- Live html preview side by side witthout saving
" gennaro-tedesco/nvim-jqx -- Json editing tools
" Plug 'psliwka/vim-smoothie'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'akinsho/nvim-bufferline.lua'

Plug 'glepnir/galaxyline.nvim'
" Plug 'hoob3rt/lualine.nvim'

Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug '~/.vim/plugged/kaafi-cursor.nvim'
call plug#end()

lua require'gitsigns'.setup()
lua require'nvim-treesitter.configs'.setup{autotag = {enable = true,}, rainbow = {enable = true}}
" lua require'lualine'.setup{options = {theme = 'tokyonight'}}

" lua require('nvim-autopairs').setup()

" Basic Setup
source ~/.config/nvim/plug-config/basic.vim

" Telescope setup
lua require'telescope-config'

" Fzf setup
" source ~/.config/nvim/plug-config/fzf.vim

" COC setup
source ~/.config/nvim/plug-config/coc.vim

" Windows clipboard sync setup file
source ~/.config/nvim/plug-config/clipboard.vim

" Navigate vim as well as tmux with same command
source ~/.config/nvim/plug-config/tmuxNavigator.vim

" Keybindings setup file
source ~/.config/nvim/plug-config/keys.vim

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
source ~/.config/nvim/plug-config/rnvimr.vim

" Vifm Vim integration
" source ~/.config/nvim/plug-config/vifm.vim


" Startify setup
source ~/.config/nvim/plug-config/start-screen.vim

" Quickscope setup
" source ~/.config/nvim/plug-config/sneak.vim

" Quickscope setup
source ~/.config/nvim/plug-config/quickscope.vim

" Colorizer setup
lua require'plug-colorizer'

" Goyo setup for JRNL
source ~/.config/nvim/plug-config/goyo.vim

" EasyMotion Setup
map ff <Plug>(easymotion-s2)

" Build and Run commands
source ~/.config/nvim/plug-config/runBuild.vim

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

" Indent line config
lua require'indentline'

" Hard Time setup
" source ~/.config/nvim/plug-config/hardTime.vim

" Emmet Setup
source ~/.config/nvim/plug-config/emmet.vim

luafile ~/.config/nvim/lua/galaxy-line.lua
" luafile ~/.config/nvim/lua/evline.lua

" Source the vimrc file after saving it

let g:indent_blankline_filetype_exclude = [ 'man', 'help', 'startify', 'dashboard', 'packer', 'neogitstatus' ]
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd FileType cpp let b:coc_pairs_disabled = ['<']
autocmd FileType vim set fo-=cro
