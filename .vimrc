set directory=~/.vim/swap//
syntax on
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set autoindent " Indent a new line
" set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set guifont=hack_nerd_font:h11

" make aliases for `:W` and `:Wq` to behave like nocaps, in case I type them
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))

" Use a line cursor (bar) in insert mode and a block cursor in normal mode
let &t_SI = "\e[6 q"  " Cursor shape in insert mode: steady bar
let &t_EI = "\e[2 q"  " Cursor shape in normal mode: steady block

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Don't store too much search and input history
" set viminfo+=/100,@100

