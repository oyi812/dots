" .tree down notes
" see vim.fandom.com/wiki/Creating_your_own_syntax_files
" https://vimhelp.org/pattern.txt.html
if exists("b:current_syntax")
  finish
endif

"syn region treePath start='\%^' end='^\ze\/' 
"hi def link treePath Comment

" contains=treeSlash,treePathName,treeSlashCont

" Special, Statement

" /path/name
syntax match treeSlash  /^\// nextgroup=treePathName
syntax match treePathName  /\i*/ contained nextgroup=treeSlashCont
syntax match treeSlashCont  /\// contained nextgroup=treePathName
hi def link treeSlash ModeMsg
hi def link treeSlashCont ModeMsg
hi def link treePathName Question

" .split
syntax match treeDot  /^\./ nextgroup=treeDotIdentifier
hi def link treeDot Question
syntax match treeDotIdentifier  /\i\+/ contained
hi def link treeDotIdentifier ModeMsg

syntax match treeDash  /^\- /
hi def link treeDash Question

let b:current_syntax = 'tree'
