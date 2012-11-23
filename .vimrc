set ts=4
set sw=4
set hls
set fdm=indent
set ai
set is
imap { {}<LEFT>
imap {} {}
imap {<DEL> {}<BS>
imap [ []<LEFT>
imap [] []
imap [<DEL> []<BS>
imap ( ()<LEFT>
imap () ()
imap (<DEL> ()<BS>

"omni completion
autocmd FileType python set ofu=pythoncomplete#Complete
autocmd FileType javascript set ofu=javascriptcomplete#CompleteJS
autocmd FileType html set ofu=htmlcomplete#CompleteTags
autocmd FileType css set ofu=csscomplete#CompleteCSS
autocmd FileType xml set ofu=xmlcomplete#CompleteTags
autocmd FileType php set ofu=phpcomplete#CompletePHP

map <F3> <Esc>:tabnew<CR>
map <F4> <Esc>:tabnew<CR>:Ex<CR>
map <F7> <C-w>\|
map <F6> <C-w>_
map <F8> <C-w>=
map <F5> <C-w>\|<C-w>_
map <S-Right> <C-w><Right>
map <S-Left> <C-w><Left>
map <S-Up> <C-w><Up>
map <S-Down> <C-w><Down>

"cursor mappings
map <silent> <Leader>c :set cuc!<CR>
map <silent> <Leader>l :set cul!<CR>

"highlights
hi CursorColumn ctermbg=black ctermfg=NONE
hi Pmenu ctermbg=black ctermfg=NONE
hi PmenuSel ctermbg=white ctermfg=black
hi Folded ctermbg=black ctermfg=lightgrey
hi Comment ctermbg=white ctermfg=black

"minusculas
imap a a<C-n><C-p>
imap b b<C-n><C-p>
imap c c<C-n><C-p>
imap d d<C-n><C-p>
imap e e<C-n><C-p>
imap f f<C-n><C-p>
imap g g<C-n><C-p>
imap h h<C-n><C-p>
imap i i<C-n><C-p>
imap j j<C-n><C-p>
imap k k<C-n><C-p>
imap l l<C-n><C-p>
imap m m<C-n><C-p>
imap n n<C-n><C-p>
imap o o<C-n><C-p>
imap p p<C-n><C-p>
imap q q<C-n><C-p>
imap r r<C-n><C-p>
imap s s<C-n><C-p>
imap t t<C-n><C-p>
imap u u<C-n><C-p>
imap v v<C-n><C-p>
imap x x<C-n><C-p>
imap y y<C-n><C-p>
imap z z<C-n><C-p>
imap ç ç<C-n><C-p>

"maiusculas
imap A A<C-n><C-p>
imap B B<C-n><C-p>
imap C C<C-n><C-p>
imap D D<C-n><C-p>
imap E E<C-n><C-p>
imap F F<C-n><C-p>
imap G G<C-n><C-p>
imap H H<C-n><C-p>
imap I I<C-n><C-p>
imap J J<C-n><C-p>
imap K K<C-n><C-p>
imap L L<C-n><C-p>
imap M M<C-n><C-p>
imap N N<C-n><C-p>
imap O O<C-n><C-p>
imap P P<C-n><C-p>
imap Q Q<C-n><C-p>
imap R R<C-n><C-p>
imap S S<C-n><C-p>
imap T T<C-n><C-p>
imap U U<C-n><C-p>
imap V V<C-n><C-p>
imap X X<C-n><C-p>
imap Y Y<C-n><C-p>
imap Z Z<C-n><C-p>
imap Ç Ç<C-n><C-p>

imap <Nul> <C-x><C-o>

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    let markedBuf = bufnr( "%" )
    exe 'hide buf' curBuf
    exe curNum . "wincmd w"
    exe 'hide buf' markedBuf
endfunction

function! ToogleAutoIndent()
    if (&ai)
        set noai
        echo "ai off"
        silent! %s/    /\t/g
        imap { {
        imap [ [
        imap ( (

        "minusculas
        imap a a
        imap b b
        imap c c
        imap d d
        imap e e
        imap f f
        imap g g
        imap h h
        imap i i
        imap j j
        imap k k
        imap l l
        imap m m
        imap n n
        imap o o
        imap p p
        imap q q
        imap r r
        imap s s
        imap t t
        imap u u
        imap v v
        imap x x
        imap y y
        imap z z
        imap ç ç

        "maiusculas
        imap A A
        imap B B
        imap C C
        imap D D
        imap E E
        imap F F
        imap G G
        imap H H
        imap I I
        imap J J
        imap K K
        imap L L
        imap M M
        imap N N
        imap O O
        imap P P
        imap Q Q
        imap R R
        imap S S
        imap T T
        imap U U
        imap V V
        imap X X
        imap Y Y
        imap Z Z
        imap Ç Ç
    else
        set ai
        echo "ai on"
        silent! %s/    /\t/g
        imap { {}<LEFT>
        imap {} {}
        imap {<DEL> {}<BS>
        imap [ []<LEFT>
        imap [] []
        imap [<DEL> []<BS>
        imap ( ()<LEFT>
        imap () ()

        "minusculas
        imap a a<C-n><C-p>
        imap b b<C-n><C-p>
        imap c c<C-n><C-p>
        imap d d<C-n><C-p>
        imap e e<C-n><C-p>
        imap f f<C-n><C-p>
        imap g g<C-n><C-p>
        imap h h<C-n><C-p>
        imap i i<C-n><C-p>
        imap j j<C-n><C-p>
        imap k k<C-n><C-p>
        imap l l<C-n><C-p>
        imap m m<C-n><C-p>
        imap n n<C-n><C-p>
        imap o o<C-n><C-p>
        imap p p<C-n><C-p>
        imap q q<C-n><C-p>
        imap r r<C-n><C-p>
        imap s s<C-n><C-p>
        imap t t<C-n><C-p>
        imap u u<C-n><C-p>
        imap v v<C-n><C-p>
        imap x x<C-n><C-p>
        imap y y<C-n><C-p>
        imap z z<C-n><C-p>
        imap ç ç<C-n><C-p>

        "maiusculas
        imap A A<C-n><C-p>
        imap B B<C-n><C-p>
        imap C C<C-n><C-p>
        imap D D<C-n><C-p>
        imap E E<C-n><C-p>
        imap F F<C-n><C-p>
        imap G G<C-n><C-p>
        imap H H<C-n><C-p>
        imap I I<C-n><C-p>
        imap J J<C-n><C-p>
        imap K K<C-n><C-p>
        imap L L<C-n><C-p>
        imap M M<C-n><C-p>
        imap N N<C-n><C-p>
        imap O O<C-n><C-p>
        imap P P<C-n><C-p>
        imap Q Q<C-n><C-p>
        imap R R<C-n><C-p>
        imap S S<C-n><C-p>
        imap T T<C-n><C-p>
        imap U U<C-n><C-p>
        imap V V<C-n><C-p>
        imap X X<C-n><C-p>
        imap Y Y<C-n><C-p>
        imap Z Z<C-n><C-p>
        imap Ç Ç<C-n><C-p>
    endif
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>dw :call DoWindowSwap()<CR>
nmap <silent> <F3> :call ToogleAutoIndent()<CR>



