call plug#begin('~/.vim/vimlsp')

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tpope/vim-commentary'
Plug 'tweekmonster/startuptime.vim'
Plug 'mizlan/termbufm'
Plug 'mhinz/vim-signify'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-sleuth'
Plug 'junegunn/vim-easy-align'
Plug 'bling/vim-airline'
Plug 'tweekmonster/startuptime.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/limelight.vim'
Plug 'wellle/targets.vim'
Plug 'airblade/vim-rooter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-signify'
Plug 'honza/vim-snippets'
Plug 'metakirby5/codi.vim'
Plug 'benmills/vimux'
Plug 'alvan/vim-closetag'
Plug 'kevinoid/vim-jsonc'
Plug 'tpope/vim-repeat'
Plug 'vifm/vifm.vim'
Plug 'ChristianChiarulli/far.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'Adictya/nvcode-color-schemes.vim'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'liuchengxu/vista.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
call plug#end()


" Basic Setup
source ~/.config/nvim/plug-config/basic.vim

" Fzf setup
source ~/.config/nvim/plug-config/fzf.vim

" Keybindings setup file
source ~/.config/nvim/plug-config/keys.vim

" Vim Lsp Setup
source ~/.config/nvim/plug-config/vimlsp.vim

" Windows clipboard sync setup file
source ~/.config/nvim/plug-config/clipboard.vim

" Theme setup
source ~/.config/nvim/plug-config/theme.vim

" Vim Airline setup
source ~/.config/nvim/plug-config/airline.vim

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

" Hard Time setup
source ~/.config/nvim/plug-config/hardTime.vim

" Emmet Setup
source ~/.config/nvim/plug-config/emmet.vim

echo "Start coding you coon"

" Source the vimrc file after saving it
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd FileType vim set fo-=cro
