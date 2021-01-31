
" :PlugInstall
call plug#begin(stdpath('data') . '/plugged')
Plug '~/my/dots/nvim/tree-plugin'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'voldikss/fzf-floaterm'
Plug 'voldikss/vim-floaterm'
call plug#end()

ln goDirective    xxx links to GruvboxAqua
ln goConstants    xxx links to GruvboxPurple
ln goDeclaration  xxx links to GruvboxRed
ln goDeclType     xxx links to GruvboxBlue
ln goBuiltins     xxx links to GruvboxOrange

" to install solarized ...
" git clone https://github.com/lifepillar/vim-solarized8.git ~/.local/share/nvim/site/pack/themes/opt/solarized8
" github.com/romainl/flattened
" curl -o ~/.local/share/nvim/site/pack/themes/opt/flattened/colors/flattened_dark.vim https://raw.githubusercontent.com/romainl/flattened/master/colors/flattened_dark.vim
" curl -o ~/.local/share/nvim/site/pack/themes/opt/flattened/colors/flattened_light.vim https://raw.githubusercontent.com/romainl/flattened/master/colors/flattened_light.vim
" curl -o ~/.local/share/nvim/site/pack/themes/opt/flattened/colors/desert-night.vim https://raw.githubusercontent.com/kooparse/vim-color-desert-night/master/colors/desert-night.vim
" git clone https://github.com/Lokaltog/vim-monotone ~/.local/share/nvim/site/pack/themes/opt/monotone

"prevent netrw from loading
let g:loaded_netrw=1
let g:netrw_loaded_netrwPlugin=1

"https://jdhao.github.io/2019/08/16/nvim_config_folding/
set fillchars=fold:\ 
set foldmethod=indent
set foldtext=getline(v:foldstart)

set hidden "change buffers without saving
set nobackup
set nowritebackup
set noswapfile

" terminal esc to return to normal mode
tnoremap <Esc> <C-\><C-n>

" window navigation
nnoremap <Left>  <C-w><C-h>
nnoremap <Down>  <C-w><C-j>
nnoremap <Up>    <C-w><C-k>
nnoremap <Right> <C-w><C-l>

" de-highlight search results
nnoremap <leader>/ :nohls<CR>
nnoremap <leader>l :FloatermNew lf<cr>

noremap ; :
noremap : ;

"set tabstop=2
"set shiftwidth=2
"set expandtab

set ttimeoutlen=5
set mouse=a "all, scrolls window not cursor
set clipboard+=unnamedplus "yank to clipboard

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

"status
"""""""
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
"set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=\ %l:%c
set statusline+=%m\ 
set statusline+=%=
" set statusline+=%#CursorColumn#
set statusline+=\ %{SyntaxItem()}
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
set statusline+=\ 

set background=dark    " Setting dark mode
"colorscheme flattened_dark
colorscheme gruvbox
set termguicolors

" syntax on
