let g:netrw_dirhistmax = 0

set shada="NONE"
set number
set clipboard+=unnamedplus

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

call plug#end()

let NERDTreeShowHidden=1
let g:airline_theme='simple'
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
