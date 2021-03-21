
if exists('$TMUX')

" Colors in tmux

echo "hello"

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

endif

" :exe  'highlight  MatchParen      guifg='.yellow.'   guibg='.red.'        guisp=NONE        gui=bold       ctermfg=NONE   ctermbg=NONE  cterm=bold'


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}
EOF


set termguicolors

set t_Co=256
set background=dark

colorscheme TSnazzy

