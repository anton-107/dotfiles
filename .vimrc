syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Show whitespaces:
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

" Plugins (using https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')

" Color scheme:
Plug 'morhetz/gruvbox'

" Search for words with :Rg
Plug 'jremmen/vim-ripgrep'

" Git support:
Plug 'tpope/vim-fugitive'

" Typescript support:
Plug 'leafgarland/typescript-vim'

" File finder:
Plug 'ctrlpvim/ctrlp.vim'

" Auto-completion:
Plug 'ycm-core/YouCompleteMe'

" Visual history of local changes:
Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()

" Init color scheme (as per https://github.com/morhetz/gruvbox/wiki/Installation):
autocmd vimenter * ++nested colorscheme gruvbox
set background=light

" Allow rg to always try to find current root:
if executable('rg')
    let g:rg_derive_root='true'
endif

" Set <SPACE> to be the leader key:
let mapleader = " "

" Settings for fiiletree:
let g:netrw_banner = 0
let g:netrw_browser_split=2
let g:netrw_winsize=25

" disable cach for ctrlp:
let g:ctrlp_use_caching = 0

" navigating between splits:
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" open file tree:
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" code navigation: go to definition
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gi :YcmCompleter GoToImplementation<CR>

" search current word in project:
nnoremap <leader>ps :Rg<CR>

" find references:
nnoremap <leader>fr :YcmCompleter GoToReferences<CR>
" code format:
nnoremap <leader>fo :YcmCompleter Format<CR>


