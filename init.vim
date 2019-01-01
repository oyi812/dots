
":PlugInstall
"https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'fatih/vim-go', { 'tag': '*' }
"Plug 'itchyny/lightline.vim'
Plug 'gcmt/taboo.vim'
call plug#end()


"show highlight group under cursor in status line
"uncomment line below to turn on
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction
"set statusline=%{SyntaxItem()}

"tab terminal(s) to use NERDTree root path
function! g:OpenTerminal()
  if exists('b:NERDTree')
    execute "tcd ". b:NERDTree.root.path.str()
    execute "vsplit"
  endif
  execute "terminal"
  startinsert!
endfunction
":vsplit <Bar> 
"<Bar> :terminal<CR>a
"
"autocmd TabNewEntered * call OnTabEnter(expand("<amatch>"))
"autocmd TabNewEntered * call OpenTerminal()

inoremap <leader>\ <Esc>
"nnoremap <leader>t :terminal<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :call OpenTerminal()<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :qa<CR>
nnoremap <leader>/ :nohls<CR>
nnoremap <leader>§ :TabooRename 
nnoremap § gt
"noremap TT :vsplit <Bar> :terminal<CR>a
"map ± :NERDTreeFind<CR> "open NERDTree at buffer location

" terminal
tnoremap <leader>\ <C-\><C-N>

"non-recursive normal
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-l> <C-w>l
nnoremap <S-k> <C-w>k

"mouse
noremap <C-LeftMouse> <LeftMouse><Esc><C-V>
noremap <C-LeftDrag> <LeftDrag>

set noswapfile
"set number "line numbering
set hidden "change buffers without saving
set mouse=a "all, scrolls window not cursor
set clipboard+=unnamedplus "yank to clipboard
set fillchars+=vert:\  "set blank vertical bar - significant whitespace
set nowrap
set textwidth=0 wrapmargin=0 "nowrap

set splitright
set sessionoptions+=tabpages,globals
set laststatus=2
set noshowmode
set background=dark
set termguicolors

":help 'runtimepath'
colorscheme mycolors
syntax on
"set t_Co=256

" see https://github.com/gcmt/taboo.vim
let g:taboo_tab_format=" %N:%f%m "
let g:taboo_modified_tab_flag="[+]"

" :help NERDTree
" Default: %{exists('b:NERDTree')?b:NERDTree.root.path.str():''}
let NERDTreeStatusline = -1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowBookmarks = 1

"call g:NERDTreePathNotifier.AddListener("init", "g:OpenTerminal")
