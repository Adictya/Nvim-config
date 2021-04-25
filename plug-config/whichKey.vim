" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<space>'<CR>


" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function


" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['/'] = [ 'gcc',                   'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC',           'open init' ]
let g:which_key_map['R'] = [ ':source $MYVIMRC',      'reload init' ]
let g:which_key_map['='] = [ '<C-W>=',                'balance windows' ]
let g:which_key_map[','] = [ 'Startify',              'start screen' ]
let g:which_key_map['d'] = [ ':bd!',                  'delete buffer']
let g:which_key_map['f'] = [ ':Telescope find_files', 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s',                'split below']
let g:which_key_map['q'] = [ 'q',                     'quit' ]
let g:which_key_map['r'] = [ ':RnvimrToggle',                 'ranger' ]
let g:which_key_map['S'] = [ ':SSave',                'save session' ]
let g:which_key_map['v'] = [ '<C-W>v',                'split right']
let g:which_key_map['z'] = [ 'Goyo',                  'zen' ]
let g:which_key_map['u'] = [ ':cd %:p:h',             'update directory' ]
let g:which_key_map['e'] = [ ':NvimTreeToggle',        'Open Explorer' ]
let g:which_key_map['p'] = [ ':Telescope buffers',              'search buffer' ]
let g:which_key_map['w'] = [ ':!dolphin .',      'open explorer' ]
let g:which_key_map['c'] = [ ':Telescope registers',  'clipboard' ]
" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 't' : [':FloatermToggle'         , 'terminal'],
      \ 'v' : [':Vista!!'                , 'tag viewer'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'D' : [':w|%bd|e#' , 'close except current'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':Telescope command_history',           'history'],
      \ ';' : [':Telescope commands',                  'commands'],
      \ 'b' : [':Telescope live_grep',                 'project Wide'],
      \ 'r' : [':Farr --source=rgnvim',                'S and R'],
      \ 'B' : [':Telescope buffers',                   'open buffers'],
      \ 'c' : [':Telescope git_commits',               'commits'],
      \ 'C' : [':Telescope git_bcommits',              'buffer commits'],
      \ 'f' : [':Telescope find_files',                'files'],
      \ 'g' : [':Telescope git_files',                 'git files'],
      \ 'h' : [':Telescope oldfiles',                  'file history'],
      \ 'H' : [':Telescope command_history',           'command history'],
      \ 'l' : [':Telescope current_buffer_fuzzy_find', 'lines'] ,
      \ 'm' : [':Telescope marks',                     'marks'] ,
      \ 'M' : [':Telescope keymaps',                   'normal maps'] ,
      \ 'p' : [':Telescope help_tags',                 'help tags'] ,
      \ 'P' : [':Telescope tags',                      'project tags'],
      \ 's' : [':CocList snippets',                    'snippets'],
      \ 'S' : [':Telescope colorscheme',               'color schemes'],
      \ 'T' : [':Telescope treesitter',                'Treesitter'],
      \ 'y' : [':Telescope filetypes',                 'file types'],
      \ 'z' : [':Telescope vim_options',               'Vim Options'],
      \ 't' : [':Telescope highlights',                'Highlights'],
      \ '?' : [':NvimTreeFindFile',                    'Find file'],
      \ }
      " \ 's' : [':Snippets'     , 'snippets'],

nnoremap <leader>gs = :lua require'gitsigns'.stage_hunk()<CR>
nnoremap <leader>gu = :lua require'gitsigns'.undo_stage_hunk()<CR>
nnoremap <leader>gr = :lua require'gitsigns'.reset_hunk()<CR>
nnoremap <leader>gb = :lua require'gitsigns'.blame_line()<CR>

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git',
      \ 'i' : [':Telescope gh issues',       'Issues'],
      \ 'p' : [':Telescope gh pull_request', 'Pull Requests'],
      \ 's' : 'Stage Hunk',
      \ 'u' : 'Unstage Hunk',
      \ 'r' : 'Reset Hunk',
      \ 'l' : 'Blame Line',
      \ 'g' : [':Telescope gh_gist',         'Gists'],
       \ }


" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                         , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'H' : [':call <SNR>13_show_documentation()<CR>'              , 'show'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal-options' ,
      \ 'n' : [':call VimuxRunCommand(";c;npm run start")', 'node start'],
      \ 'b' : [':call VimuxRunCommand(";c;npm run build")', 'node build'],
      \ 'i' : [':VimuxInspectRunner',                       'copy ouptut'],
      \ 'l' : [':VimuxRunLastCommand',                      'run last command'],
      \ 'f' : [':FloatermNew fzf',                          'fzf'],
      \ 'g' : [':FloatermNew lazygit',                      'git'],
      \ 'd' : [':FloatermNew lazydocker',                   'docker'],
      \ 'p' : [':FloatermNew python3',                      'python'],
      \ 'r' : [':RnvimrToggle',                             'ranger'],
      \ 't' : [':call VimuxRunCommand(";")',                'toggle'],
      \ 'c' : [':call VimuxRunCommand(g:runCmd)',           'compile and run'],
      \ 'C' : [':call VimuxRunCommand(g:runCmdArg)',        'run with input'],
      \ }


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
