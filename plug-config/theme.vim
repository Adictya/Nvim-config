colorscheme TSnazzy
" colorscheme snaz
" :exe  'highlight  MatchParen      guifg='.yellow.'   guibg='.red.'        guisp=NONE        gui=bold       ctermfg=NONE   ctermbg=NONE  cterm=bold'

" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"   highlight = {
"     enable = true,              -- false will disable the whole extension
"     disable = {},  -- list of language that will be disabled
"   },
" }
" EOF

highlight StartifyHeader  ctermfg=Blue guifg=#099DFD guibg=#fff

