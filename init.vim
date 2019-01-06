"https://medium.freecodecamp.org/learn-linux-vim-basic-features-19134461ab85

":PlugInstall
"https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'gcmt/taboo.vim'
call plug#end()

"show highlight group under cursor in status line
"uncomment line below to turn on
"function! SyntaxItem()
"  return synIDattr(synID(line("."),col("."),1),"name")
"endfunction
"set statusline=%{SyntaxItem()}

"tabs with optional name tagging for window tabs over same path
nnoremap <leader>t :tabe<CR><Bar>:tcd 
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

nnoremap <leader>/ :nohls<CR>

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

"set number "line numbering
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
set background=dark
set termguicolors
set sessionoptions+=tabpages,globals
",options,winpos

":help 'runtimepath'
colorscheme mycolors
syntax on

" see https://github.com/gcmt/taboo.vim
let g:taboo_tab_format=" %N:%P%m "
let g:taboo_renamed_tab_format=" %N:%P:%l%m "
let g:taboo_modified_tab_flag="[+]"
