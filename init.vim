" see https://github.com/junegunn/vim-plug
" :PlugInstall
" :UpdateRemovePlugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'fatih/vim-go', { 'tag': '*' }
"Plug 'itchyny/lightline.vim'
Plug 'gcmt/taboo.vim'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'morhetz/gruvbox'
"Plug 'dikiaap/minimalist'
"Plug 'rakr/vim-one'
call plug#end()

inoremap <leader>\ <Esc>
noremap WW :w<CR>
noremap TT :vsplit <Bar> :terminal<CR>a

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

"colorscheme one
"set background=dark

"gruvbox
"let g:gruvbox_contrast_dark='hard' " soft medium hard
"let g:gruvbox_hls_cursor='blue' " soft medium hard
"colorscheme gruvbox

"minimalist
"set t_Co=256
"syntax on
"colorscheme minimalist

"highlight Normal ctermbg=0 "black background
"colorscheme palenight

" see https://github.com/gcmt/taboo.vim
let g:taboo_tab_format=" %N:%f%m "
let g:taboo_modified_tab_flag="[+]"

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowBookmarks = 1
map § :NERDTreeToggle<CR>
map ± :NERDTreeFind<CR>

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
set t_Co=256
"let g:colors_name = "minimalist"

"https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
hi ColorColumn      ctermfg=NONE    ctermbg=232     cterm=NONE     
hi Cursor           ctermfg=234     ctermbg=255     cterm=NONE     
hi CursorColumn     ctermfg=NONE    ctermbg=232     cterm=NONE     
hi CursorLine       ctermfg=NONE    ctermbg=232     cterm=NONE     
hi CursorLineNr     ctermfg=59      ctermbg=232     cterm=NONE     
hi DiffAdd          ctermfg=255     ctermbg=64      cterm=bold     
hi DiffChange       ctermfg=NONE    ctermbg=NONE    cterm=NONE     
hi DiffDelete       ctermfg=167     ctermbg=NONE    cterm=NONE     
hi DiffText         ctermfg=255     ctermbg=24      cterm=bold     
hi Directory        ctermfg=179     ctermbg=NONE    cterm=NONE     
hi ErrorMsg         ctermfg=255     ctermbg=167     cterm=NONE     
hi FoldColumn       ctermfg=117     ctermbg=232     cterm=NONE     
hi Folded           ctermfg=242     ctermbg=232     cterm=NONE     
hi IncSearch        ctermfg=234     ctermbg=75      cterm=NONE     
hi LineNr           ctermfg=59      ctermbg=232     cterm=NONE     
hi MatchParen       ctermfg=NONE    ctermbg=NONE    cterm=underline
hi MoreMsg          ctermfg=150     ctermbg=NONE    cterm=NONE     
hi NonText          ctermfg=234     ctermbg=232     cterm=NONE     
hi Normal           ctermfg=255     ctermbg=232     cterm=NONE     
hi Pmenu            ctermfg=NONE    ctermbg=NONE    cterm=NONE     
hi PmenuSel         ctermfg=NONE    ctermbg=59      cterm=NONE     
hi Question         ctermfg=150     ctermbg=NONE    cterm=NONE     
hi Search           ctermfg=NONE    ctermbg=NONE    cterm=underline
hi SignColumn       ctermfg=NONE    ctermbg=232     cterm=NONE     
hi StatusLine       ctermfg=255     ctermbg=0       cterm=bold     
hi StatusLineNC     ctermfg=0       ctermbg=0       cterm=NONE     
hi TabLineFill      ctermfg=0       ctermbg=0       cterm=bold     
hi TabLine          ctermfg=248     ctermbg=0       cterm=bold     
hi TabLineSel       ctermfg=255     ctermbg=0       cterm=bold     
hi Title            ctermfg=255     ctermbg=NONE    cterm=NONE     
hi Underlined       ctermfg=NONE    ctermbg=NONE    cterm=NONE     
hi VertSplit        ctermfg=0       ctermbg=0       cterm=NONE     
hi Visual           ctermfg=NONE    ctermbg=236     cterm=NONE     
hi WarningMsg       ctermfg=255     ctermbg=167     cterm=NONE     
hi WildMenu         ctermfg=234     ctermbg=215     cterm=NONE     

hi NERDTreeUp       ctermfg=167     ctermbg=NONE    cterm=NONE     
hi NERDTreeDir      ctermfg=251     ctermbg=NONE    cterm=bold     
hi NERDTreeDirSlash ctermfg=251     ctermbg=NONE    cterm=NONE     
hi NERDTreeFile     ctermfg=241     ctermbg=NONE    cterm=NONE     
hi NERDTreeCWD      ctermfg=167     ctermbg=NONE    cterm=NONE     
hi NERDTreeOpenable ctermfg=167     ctermbg=NONE    cterm=NONE     
hi NERDTreeClosable ctermfg=167     ctermbg=NONE    cterm=NONE     

"syntax highlighting
hi Boolean          ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Character        ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Comment          ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Conditional      ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Constant         ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Define           ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Error            ctermfg=241     ctermbg=167     cterm=NONE     
hi Float            ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Function         ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Identifier       ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Keyword          ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Label            ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Number           ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Operator         ctermfg=241     ctermbg=NONE    cterm=NONE     
hi PreCondit        ctermfg=241     ctermbg=NONE    cterm=NONE     
hi PreProc          ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Repeat           ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Special          ctermfg=241     ctermbg=NONE    cterm=NONE     
hi SpecialComment   ctermfg=241     ctermbg=NONE    cterm=NONE     
hi SpecialKey       ctermfg=241     ctermbg=237     cterm=NONE     
hi SpellBad         ctermfg=241     ctermbg=167     cterm=NONE     
hi SpellCap         ctermfg=241     ctermbg=74      cterm=NONE     
hi SpellRare        ctermfg=241     ctermbg=140     cterm=NONE     
hi SpellLocal       ctermfg=241     ctermbg=14      cterm=NONE     
hi Statement        ctermfg=241     ctermbg=NONE    cterm=NONE     
hi StorageClass     ctermfg=241     ctermbg=NONE    cterm=NONE     
hi String           ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Structure        ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Tag              ctermfg=241     ctermbg=NONE    cterm=NONE     
hi Todo             ctermfg=241     ctermbg=234     cterm=inverse  
hi Type             ctermfg=241     ctermbg=NONE    cterm=NONE     

syntax on
