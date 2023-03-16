" show line numbers
set number

"It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first. Also, undo buffers and marks are preserved while the buffer is open.
set hidden

"utf8 default encoding
set encoding=UTF-8

"create no swapfile
set noswapfile

"scroll offset
set scrolloff=20

"50 entries in histroy
set history=50

"4 spaces as tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"unix file format
set fileformat=unix

"no backups
set nobackup
set nowritebackup

"2 lines cmd height
set cmdheight=2

"speed up command capture time
set updatetime=500
set shortmess+=c

"line break and smart indent
set lbr
set si

"split below and to the right
set splitright
set splitbelow

"dark background
set background=dark

"enable syntax highlight
syntax on
filetype plugin indent on

" netrw config
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=20
let g:netrw_altv=1
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Lexplore
augroup END
