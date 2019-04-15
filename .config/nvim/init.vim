" plugins {{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ } 
call plug#end()
" }}}

" netrw {{{
let g:netrw_liststyle = 3
let g:netrw_banner = 1
" }}}

" Misc Options {{{
set mouse=a
set tabstop=4
set ruler
syntax on
set smartindent
" line numbers
set nu
" hide buffers when going to a new buffer, don't close them
set hidden
" }}}

" vimscript editing convenience {{{
nnoremap <leader>ev :split $MYVIMRC<cr>
inoremap <leader>ev <esc>:split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" {{{
let g:LanguageClient_serverCommands = {
  \ 'rust': ['rustup', 'run', 'stable', 'rls'],
  \ 'go': ['gopls'] }
autocmd BufWritePre *.go,*.rs :call LanguageClient#textDocument_formatting_sync()
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" }}}

" Vim Go {{{
let g:go_def_mode='gopls'
" }}}

" airline settings {{{
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
" }}}

" ctrlp settings {{{
let g:ctrlp_max_files=20000
" }}}

" deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}

" Wildignore stuff {{{
set wildignore+=*/buck-out/*
set wildignore+=*/target/*
" }}}
