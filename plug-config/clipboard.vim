" Set default register to + which is the linux clipboard
set clipboard:unnamedplus

" Sync Windows clipboard with wsl clipboard
" let s:clip = '/mnt/c/Windows/System32/clip.exe'


" if executable(s:clip)
"     augroup WSLYank
"         autocmd!
"         autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
"     augroup END
" end
" noremap "+p :exe 'norm a'.system('/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -Command Get-Clipboard')<CR>
