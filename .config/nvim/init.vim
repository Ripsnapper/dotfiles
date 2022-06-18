map <Space> <Leader>

set nocompatible

" Install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mg979/vim-visual-multi'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

nnoremap <C-P> :bprev<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:airline_powerline_fonts = 1
set guifont=Hack
set t_co=256
colorscheme gruvbox
set background=dark

set number

set path+=**
set wildmenu

set tabstop=4
set shiftwidth=4
set softtabstop=4 noexpandtab
set smarttab

set listchars=tab:▸\ ,eol:¬
set list

" Exit Terminal mode with esc
tnoremap <Esc> <C-\><C-n>

" Save Undo History
set undofile


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Enable airline tabline
let g:airline#extensions#tabline#enabled = 1

" replace selection with result of expresseion
xmap <Leader>c "cc<C-R>=<C-R>c<CR><ESC>
smap <Leader>c "cc<C-R>=<C-R>c<CR><ESC>
