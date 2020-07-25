" Remove version warning at startup
let g:go_version_warning=0

" Disable wrapping
command! -nargs=* Wrap set wrap linebreak nolist

" Goyo setup 
let g:goyo_width = 120
function! s:goyo_enter()
    execute ‘Limelight’
    let b:quitting = 0
    let b:quitting_bang = 0
    autocmd QuitPre <buffer> let b:quitting = 1
    cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
    execute ‘Limelight!’
    if b:quitting && len(filter(range(1, bufnr(‘$’)), ‘buflisted(v:val)’)) == 1
        if b:quitting_bang
            qa!
        else
            qa
        endif
    endif
endfunction
