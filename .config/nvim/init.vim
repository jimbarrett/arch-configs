let g:netrw_dirhistmax = 0

set shada="NONE"
set number

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

call plug#end()

let NERDTreeShowHidden=1
let g:airline_theme='simple'
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
