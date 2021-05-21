nnoremap ; :
nnoremap : ;

let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

xnoremap ga <Plug>(EasyAlign)
nnoremap ga <Plug>(EasyAlign)

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
nnoremap <C-s> :noa w<CR>

" " Toggle NERDTreeToggle
" nnoremap <C-e> :NERDTreeToggle<CR>
" inoremap <C-e> :NERDTreeToggle<CR>

" Inser line above and below
nnoremap R :<c-u>call append('.', '')<cr>:call append(line('.')-1, '')<cr>

" Yank to alternative buffer
nnoremap Y "2y
nnoremap <m-p> "2p

nnoremap <c-J> :m+<cr>
nnoremap <c-K> :m-2<cr>

" Tab management
nnoremap J :BufferLineCyclePrev<CR>
nnoremap K :BufferLineCycleNext<CR>
nnoremap <m-d> :BufferLineMovePrev<CR>
nnoremap <m-f> :BufferLineMoveNext<CR>
nnoremap <m-b> :BufferLinePick<CR>

nnoremap ^i :noh<CR>

" hop
nnoremap s :HopWord<CR>

" nnoremap <C-w> :w\|bd<Cr>

" Paste and Yank without new line
nnoremap gP i<CR><Esc>PkJxJx
nnoremap gp a<CR><Esc>PkJxJx
nnoremap dil ^d$

nnoremap Q @q

" Comment Fix
vmap gcc gc
