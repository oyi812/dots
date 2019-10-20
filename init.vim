":PlugInstall
" :so[urce] %
" :so ~/.vimrc
call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-fugitive'
Plug 'gcmt/taboo.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'
Plug 'ajmwagar/vim-deus'
call plug#end()

"prevent netrw from loading
let g:loaded_netrw=1
let g:netrw_loaded_netrwPlugin=1

"show highlight group under cursor in status line
"uncomment line below to turn on
"function! SyntaxItem()
"  return synIDattr(synID(line("."),col("."),1),"name")
"endfunction
"set statusline=%{SyntaxItem()}

"tabs with optional name tagging for window tabs over same path
" :tcd
nnoremap <leader>t :tabe<CR><Bar>:TabooRename 
nnoremap <leader>n :TabooRename 
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" de-highlight search results
nnoremap <leader>/ :nohls<CR>

" Fzf
nnoremap <silent> <leader>r :Rg<Space>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>g :GFiles?<CR>

" gf - open file under cursor
" :tcd change tab default dir

noremap ; :
noremap : ;

nnoremap <Left>  <C-w>h
nnoremap <Down>  <C-w>j
nnoremap <Up>    <C-w>k
nnoremap <Right> <C-w>l

inoremap <Left>  <C-\><C-N><C-w>h
inoremap <Down>  <C-\><C-N><C-w>j
inoremap <Up>    <C-\><C-N><C-w>k
inoremap <Right> <C-\><C-N><C-w>l

tnoremap <Esc>   <C-\><C-N>
tnoremap <Left>  <C-\><C-N><C-w>h
tnoremap <Down>  <C-\><C-N><C-w>j
tnoremap <Up>    <C-\><C-N><C-w>k
tnoremap <Right> <C-\><C-N><C-w>l

"mouse
"noremap <RightMouse> :let @+ = expand("%")<CR>
"noremap <C-LeftMouse> <LeftMouse><Esc><C-V>
"noremap <C-LeftDrag> <LeftDrag>

"noremap <ScrollWheelUp> k
"noremap <ScrollWheelDown> j

autocmd BufEnter term://* startinsert

filetype plugin indent on
"set tabstop=2
"set shiftwidth=2
"set noswapfile
"set expandtab

set relativenumber " relative line numbering
set number "line numbering
set hidden "change buffers without saving
set mouse=a "all, scrolls window not cursor
set clipboard+=unnamedplus "yank to clipboard
set fillchars+=vert:\  "set blank vertical bar - significant whitespace
set nowrap
set textwidth=0 wrapmargin=0 "nowrap

set splitright
set splitbelow
set laststatus=2
set noshowmode
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,globals,winpos,resize,localoptions,help,folds

" Switch off all auto-indenting
set nocindent
set nosmartindent
set noautoindent
set indentexpr=

filetype indent off
filetype plugin indent off

":help 'runtimepath'
"colorscheme mycolors

" deus
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
colorscheme deus
let g:deus_termcolors=256

syntax on

" see https://github.com/gcmt/taboo.vim
let g:taboo_tab_format=" %N:%P%m "
let g:taboo_renamed_tab_format=" %N:%P:%l%m "
let g:taboo_modified_tab_flag="[+]"
