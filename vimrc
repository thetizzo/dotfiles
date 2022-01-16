" Plugins
" by vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'vim-syntastic/syntastic'
  Plug 'rust-lang/rust.vim'
call plug#end()

" Turns on current line number & relative line numbering
set number
set relativenumber

" Spaces over tabs and 2 space tab width
set tabstop=4 shiftwidth=2 softtabstop=0 expandtab

" Show whitespace chars
set list

""""""""
" Rust

" Auto format Rust on save
let g:rustfmt_autosave = 1

""""""""
" Syntastic

" Recommended config for beginners
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""
" NERDTree

" Key Bindings
" \n - move cursor to NERDTree
" ctrl+n - Open a new NERDTree window
" ctrl+t - Toggle the existing NERDTree window
" ctrl+f - Show folder for current file in NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Close the tab if NERDTree is the only window remaining in it.
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Show hidden files
let NERDTreeShowHidden=1

