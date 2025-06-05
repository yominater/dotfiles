" make swap files be in .vim/swap
set directory=~/.vim/swap//
set nonumber        " Show line numbers
set ruler         " Show cursor position (line, column)
set laststatus=2  " Ensure the status line is always visible
set ic "ignore case for searches
syntax on
set undofile " persistent undo across sessions

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                  \ | wincmd p | diffthis
endif

" help for accidental typing of "q:" instead of ":q" so add help text
  augroup vimHints
    au!
    autocmd CmdwinEnter *
          \ echohl Todo |
          \ echo gettext('You discovered the command-line window! You can close it with ":q".') |
          \ echohl None
  augroup END

