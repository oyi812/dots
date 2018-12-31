" see https://github.com/junegunn/vim-plug
" :PlugInstall
" :UpdateRemovePlugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'fatih/vim-go', { 'tag': '*' }
"Plug 'itchyny/lightline.vim'
Plug 'gcmt/taboo.vim'
call plug#end()

function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction
set statusline+=%{SyntaxItem()}

inoremap <leader>\ <Esc>
noremap WW :w<CR>
noremap TT :vsplit <Bar> :terminal<CR>a

noremap <C-LeftMouse> <LeftMouse><Esc><C-V>
noremap <C-LeftDrag> <LeftDrag>

" terminal
tnoremap <leader>\ <C-\><C-N>

" non-recursive normal
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-l> <C-w>l
nnoremap <S-k> <C-w>k

set noswapfile
"set number "line numbering
set hidden "change buffers without saving
set mouse=a "all, scrolls window not cursor
set clipboard+=unnamedplus "yank to clipboard
set fillchars+=vert:\  "set blank vertical bar - significant whitespace

set sessionoptions+=tabpages,globals
set laststatus=2
set noshowmode
set background=dark
set termguicolors

":help 'runtimepath'
colorscheme mycolors
"set t_Co=256

" see https://github.com/gcmt/taboo.vim
let g:taboo_tab_format=" %N:%f%m "
let g:taboo_modified_tab_flag="[+]"

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowBookmarks = 1
map § :NERDTreeToggle<CR>
map ± :NERDTreeFind<CR>
