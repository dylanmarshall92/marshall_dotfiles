set guifont=Monospace\ 9
syntax on
colorscheme gruvbox
set background=dark

" Strip trailing whitespace from file when saving
autocmd BufWritePre *.py,*.cc,*.hh normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.py,*.cc,*.hh :%s/\s\+$//e

imap jk <Esc>
set listchars=tab:>-,extends:>,precedes:<
set tabstop=2
set shiftwidth=2
set noexpandtab
set cindent
set list
set splitbelow
set splitright

" Highlight bad indentation characters
highlight BadIndent ctermbg=gray guibg=wheat
au BufRead,BufNewFile *.cc,*.hh 2match BadIndent /^\t* [\t ]*/
autocmd BufWinEnter *.cc,*.hh 2match BadIndent /^\t* [\t ]*/
au BufRead,BufNewFile *.py,*.pyw 2match BadIndent /^ *\t[\t ]*/
autocmd BufWinEnter *.py,*.pyw 2match BadIndent /^ *\t[\t ]*/

" What to use for an indent.$
" This will affect Ctrl-T and 'autoindent'.$
" Python: 4 spaces$
" C: tabs (pre-existing files) or 4 spaces (new files)$
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set autoindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

nnoremap <C-L> :nohl<CR><C-L>
