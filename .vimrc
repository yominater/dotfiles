set directory=~/.vim/swap//
syntax on
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set autoindent " Indent a new line
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set guifont=hack_nerd_font:h11
" Plugins
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'name': 'dracula' }

call plug#end()
" autocmd vimenter * ++nested colorscheme gruvbox
