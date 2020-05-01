" plugins {{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
call plug#end()
" }}}

" netrw {{{
let g:netrw_liststyle = 3
let g:netrw_banner = 1
" }}}

" Misc Options {{{
set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
syntax on
set smartindent
set nu
set clipboard+=unnamedplus
" }}}

" vimscript editing convenience {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
inoremap <leader>ev <esc>:vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" functions {{{
function! _Dir()
    execute 'vsplit' expand('%:p:h')
endfunction

command! Dir call _Dir()

" Quickly call Dir function.
nnoremap <leader>u :Dir<enter>
" }}}


" fun short cuts {{{
nnoremap <leader>ss :set spell<cr>
inoremap <leader>ss <esc>:set spell<cr>
nnoremap <leader>ns :set nospell<cr>
inoremap <leader>ns <esc>:set nospell<cr>
" }}}

" vim-go {{{
let g:go_fmt_command = "goimports"
autocmd FileType go nnoremap <leader>ts :GoTest<cr>
autocmd FileType go nnoremap <leader>at :GoAlternate<cr>
" }}}

" rust vim {{{
let g:rustfmt_autosave = 1 
autocmd FileType rust nnoremap <leader>ts :RustTest<cr>
" }}}

" deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}

" airline settings {{{
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
" }}}

" ctrlp {{{
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 0
" }}}

" nerdtree {{{
nmap <F6> :NERDTreeToggle<CR>
" }}}

" Wildignore stuff {{{
set wildignore+=*/buck-out/*
set wildignore+=*/target/*
" }}}
