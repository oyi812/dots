
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

"- open Tree and/or Term manually in new tab
"- if not possible to restore session tree automatically then
"  ... set t:... scoped var to flag Tree open in tab

"TODO see https://stackoverflow.com/questions/4226905/vim-nerdtree-not-recovered-in-session-restore
"TODO see https://gist.github.com/scrooloose/1527501
"TODO get rid of NERDTree and open terminal in tab dir (tcd)
"https://neovim.io/doc/user/channel.html#channel
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

inoremap <S-CR> <CR>
inoremap <CR> <Esc>
"nnoremap <leader>t :terminal<CR>
nnoremap <leader>r :TabooRename 
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :call OpenTerminal()<CR>
"nnoremap <leader>ww :w<CR>
"nnoremap <leader>wq :wq<CR>
"nnoremap <leader>qq :q<CR>
"nnoremap <leader>qa :qa<CR>
"nnoremap <leader>bd :bd<CR>
nnoremap <leader>/ :nohls<CR>
"nnoremap <leader>s :mksession<CR>
"nnoremap <leader>h :sp<CR>
"nnoremap <leader>v :vs<CR>
"nnoremap <leader>d :bd<CR>
nnoremap § gt
nnoremap ; :
"noremap TT :vsplit <Bar> :terminal<CR>a
"map ± :NERDTreeFind<CR> "open NERDTree at buffer location

" terminal
tnoremap <Esc> <C-\><C-N>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

"non-recursive normal
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-l> <C-w>l
nnoremap <S-k> <C-w>k

"mouse
noremap <RightMouse> :let @+ = expand("%")<CR>
noremap <C-LeftMouse> <LeftMouse><Esc><C-V>
noremap <C-LeftDrag> <LeftDrag>

noremap <ScrollWheelUp> k
noremap <ScrollWheelDown> j

autocmd BufEnter term://* startinsert

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set noswapfile
set expandtab

"set number "line numbering
set hidden "change buffers without saving
"set mouse=a "all, scrolls window not cursor
set clipboard+=unnamedplus "yank to clipboard
set fillchars+=vert:\  "set blank vertical bar - significant whitespace
set nowrap
set textwidth=0 wrapmargin=0 "nowrap

set splitright
set splitbelow
"set sessionoptions+='tabpages,globals,options,winpos'
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
