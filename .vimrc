set directory=~/.vim/swap//
syntax on
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set autoindent " Indent a new line
" set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set guifont=hack_nerd_font:h11
" Plugins
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
" Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
" Plug 'morhetz/gruvbox'

call plug#end()
" autocmd vimenter * ++nested colorscheme dracula

cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Don't store too much search and input history
set viminfo+=/100,@100

