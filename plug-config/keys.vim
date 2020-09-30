nnoremap ; :
nnoremap : ;

let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Remap ctrl+HJKL to arrow in Insert Mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" Map C-A to calculate expression on cursor line
" inoremap <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
" nnoremap <C-A> i<C-O>diW<End><C-R>=<C-R>0<CR>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Alternate way to save
nnoremap <C-s> :w<CR>

" " Toggle NERDTreeToggle
" nnoremap <C-e> :NERDTreeToggle<CR>
" inoremap <C-e> :NERDTreeToggle<CR>

" Tab management
nnoremap J :bprev<CR>
nnoremap K :bnext<CR>
" nnoremap <C-w> :w\|bd<Cr>

" Paste and Yank without new line
nnoremap gP i<CR><Esc>PkJxJx
nnoremap gp a<CR><Esc>PkJxJx
nnoremap dil ^d$

" Comment Fix
vmap gcc gc
