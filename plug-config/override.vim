
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>Dsurround  :<C-U>call <SID>dosurround(<SID>inputtarget())<CR>
nnoremap <silent> <Plug>Csurround  :<C-U>call <SID>changesurround()<CR>
nnoremap <silent> <Plug>CSurround  :<C-U>call <SID>changesurround(1)<CR>
nnoremap <expr>   <Plug>Yssurround '^'.v:count1.<SID>opfunc('setup').'g_'
nnoremap <expr>   <Plug>YSsurround <SID>opfunc2('setup').'_'
nnoremap <expr>   <Plug>Ysurround  <SID>opfunc('setup')
nnoremap <expr>   <Plug>YSurround  <SID>opfunc2('setup')
vnoremap <silent> <Plug>VSurround  :<C-U>call <SID>opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR>
vnoremap <silent> <Plug>VgSurround :<C-U>call <SID>opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR>
inoremap <silent> <Plug>Isurround  <C-R>=<SID>insert()<CR>
inoremap <silent> <Plug>ISurround  <C-R>=<SID>insert(1)<CR>

if !exists("g:surround_no_mappings") || ! g:surround_no_mappings
  nmap ds  <Plug>Dsurround
  nmap cs  <Plug>Csurround
  nmap cS  <Plug>CSurround
  nmap ys  <Plug>Ysurround
  nmap yS  <Plug>YSurround
  nmap yss <Plug>Yssurround
  nmap ySs <Plug>YSsurround
  nmap ySS <Plug>YSsurround
  xmap S   <Plug>VSurround
  xmap gS  <Plug>VgSurround
  if !exists("g:surround_no_insert_mappings") || ! g:surround_no_insert_mappings
    if !hasmapto("<Plug>Isurround","i") && "" == mapcheck("<C-S>","i")
      imap    <C-S> <Plug>Isurround
    endif
    imap      <C-G>s <Plug>Isurround
    imap      <C-G>S <Plug>ISurround
  endif
endif

command! -range -bar Commentary call s:go(<line1>,<line2>)
xnoremap <expr>   <Plug>Commentary     <SID>go()
nnoremap <expr>   <Plug>Commentary     <SID>go()
nnoremap <expr>   <Plug>CommentaryLine <SID>go() . '_'
onoremap <silent> <Plug>Commentary        :<C-U>call <SID>textobject(get(v:, 'operator', '') ==# 'c')<CR>
nnoremap <silent> <Plug>ChangeCommentary c:<C-U>call <SID>textobject(1)<CR>
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"<CR>

if !hasmapto('<Plug>Commentary') || maparg('gc','n') ==# ''
  xmap gc  <Plug>Commentary
  nmap gc  <Plug>Commentary
  omap gc  <Plug>Commentary
  nmap gcc <Plug>CommentaryLine
  if maparg('c','n') ==# '' && !exists('v:operator')
    nmap cgc <Plug>ChangeCommentary
  endif
  nmap gcu <Plug>Commentary<Plug>Commentary
endif
