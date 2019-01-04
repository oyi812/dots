" Vim color file
let colors_name = "mycolors"

hi clear
if exists("syntax_on")
  syntax reset
endif

function! Highlight(hg, fg, bg, em)
  execute 'hi ' a:hg ' guifg=' a:fg ' guibg=' a:bg ' gui=' a:em
endfunction

"my colors
let g:WindowBG = '#080808'
let g:VisualBG = '#0F0F0F'
let g:LineBG = '#0F0F0F'
let g:Black = '#000000'
let g:White = '#FFFFFF'

"https://material.io/design/color/#tools-for-picking-colors
let g:Green50 = '#E8F5E9'
let g:Green100 = '#C8E6C9'
let g:Green200 = '#A5D6A7'
let g:Green300 = '#81C784'
let g:Green400 = '#66BB6A'
let g:Green500 = '#4CAF50'
let g:Green600 = '#43A047'
let g:Green700 = '#388E3C'
let g:Green800 = '#2E7D32'
let g:Green900 = '#1B5E20'
let g:GreenA100 = '#B9F6CA'
let g:GreenA200 = '#69F0AE'
let g:GreenA400 = '#00E676'
let g:GreenA700 = '#00C853'

let g:Gray50 = '#FAFAFA'
let g:Gray100 = '#F5F5F5'
let g:Gray200 = '#EEEEEE'
let g:Gray300 = '#E0E0E0'
let g:Gray400 = '#BDBDBD'
let g:Gray500 = '#9E9E9E'
let g:Gray600 = '#757575'
let g:Gray700 = '#616161'
let g:Gray800 = '#424242'
let g:Gray900 = '#212121'

"200
call Highlight('goTodo', g:Gray200, g:WindowBG, 'NONE')
call Highlight('goEscapeC', g:Gray100, g:WindowBG, 'NONE')

"300
call Highlight('goDecimalInt', g:Gray300, g:WindowBG, 'NONE')
call Highlight('goConstants', g:Gray300, g:WindowBG, 'NONE')
call Highlight('goString', g:Gray300, g:WindowBG, 'NONE')
call Highlight('goFloat', g:Gray300, g:WindowBG, 'NONE')

"500
call Highlight('Normal', g:Gray500, g:WindowBG, 'NONE')
call Highlight('NonText', g:Gray900, g:WindowBG, 'NONE')
call Highlight('EndOfBuffer', g:WindowBG, g:WindowBG, 'NONE')
call Highlight('CursorLine', g:Gray500, g:LineBG, 'NONE')
call Highlight('Cursor', g:LineBG, g:Gray50, 'NONE')

"600
call Highlight('goType', g:Gray600, g:WindowBG, 'NONE')
call Highlight('goFloats', g:Gray600, g:WindowBG, 'NONE')
call Highlight('goDeclType', g:Gray600, g:WindowBG, 'NONE')
call Highlight('goExtraType', g:Gray600, g:WindowBG, 'NONE')
call Highlight('goSignedInts', g:Gray600, g:WindowBG, 'NONE')
call Highlight('goUnsignedInts', g:Gray600, g:WindowBG, 'NONE')

"700
call Highlight('goLabel', g:Gray700, g:WindowBG, 'NONE')
call Highlight('goRepeat', g:Gray700, g:WindowBG, 'NONE')
call Highlight('goBuiltins', g:Gray700, g:WindowBG, 'NONE')
call Highlight('goDirective', g:Gray700, g:WindowBG, 'NONE')
call Highlight('goStatement', g:Gray700, g:WindowBG, 'NONE')
call Highlight('goDeclaration', g:Gray700, g:WindowBG, 'NONE')
call Highlight('goConditional', g:Gray700, g:WindowBG, 'NONE')

"800
call Highlight('goComment', g:Gray800, g:WindowBG, 'NONE')

call Highlight('NERDTreeBookmarksLeader', g:Gray700, g:WindowBG, 'NONE')
call Highlight('NERDTreeBookmarkName', g:Gray300, g:WindowBG, 'NONE')
call Highlight('NERDTreeBookmark', g:Gray700, g:WindowBG, 'NONE')
call Highlight('NERDTreeCWD', g:Gray300, g:WindowBG, 'NONE')
call Highlight('NERDTreeOpenable', g:Gray100, g:WindowBG, 'NONE')
call Highlight('NERDTreeClosable', g:Gray100, g:WindowBG, 'NONE')
call Highlight('NERDTreeDir', g:Gray600, g:WindowBG, 'NONE')
call Highlight('NERDTreeDirSlash', g:Gray700, g:WindowBG, 'NONE')
call Highlight('NERDTreeFile', g:Gray700, g:WindowBG, 'NONE')
call Highlight('NERDTreeExecFile', g:Gray600, g:WindowBG, 'NONE')
hi NERDTreeUp       guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeNodeDelimiters       guifg=#D75F5F       guibg=NONE      gui=NONE

call Highlight('TabLineFill', g:Black, g:Black, 'NONE')
call Highlight('TabLine', g:Black, g:Gray200, 'inverse')
call Highlight('TabLineSel', g:Gray200, g:WindowBG, 'inverse')
call Highlight('VertSplit', g:Black, g:Black, 'NONE')
call Highlight('StatusLine', g:Gray200, g:Black, 'NONE')
call Highlight('StatusLineNC', g:Gray800, g:Black, 'NONE')
call Highlight('Visual', g:Gray300, g:VisualBG, 'NONE')
call Highlight('Search', g:VisualBG, g:Gray300, 'NONE')
call Highlight('IncSearch', g:Gray300, g:VisualBG, 'NONE')

" :help highlight-groups
" :highlight
" :source %

"hi ColorColumn      guifg=NONE          guibg=#121212   gui=NONE
"hi Cursor           guifg=#1C1C1C       guibg=#EEEEEE   gui=NONE
"hi CursorColumn     guifg=NONE          guibg=#121212   gui=NONE
"hi CursorLine       guifg=NONE          guibg=#121212   gui=NONE
"hi CursorLineNr     guifg=#5F5F5F       guibg=#121212   gui=NONE
"
"hi DiffAdd          guifg=#EEEEEE       guibg=#5F8700   gui=bold
"hi DiffChange       guifg=NONE          guibg=NONE      gui=NONE
"hi DiffDelete       guifg=#D75F5F       guibg=NONE      gui=NONE
"hi DiffText         guifg=#EEEEEE       guibg=#005F87   gui=bold
"
"hi Directory        guifg=#D7AF5F       guibg=NONE      gui=NONE
"hi ErrorMsg         guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
"hi FoldColumn       guifg=#87D7FF       guibg=#000000   gui=NONE
"hi Folded           guifg=#666666       guibg=#1C1C1C   gui=NONE
"hi IncSearch        guifg=#1C1C1C       guibg=#5FAFFF   gui=NONE
"hi Search           guifg=NONE          guibg=NONE      gui=underline
"hi LineNr           guifg=#5F5F5F       guibg=#1C1C1C   gui=NONE
"hi MatchParen       guifg=NONE          guibg=NONE      gui=underline
"hi MoreMsg          guifg=#AFD787       guibg=NONE      gui=NONE
""hi NonText          guifg=#1C1C1C       guibg=#080808   gui=NONE
""hi Normal           guifg=#c6f6c6       guibg=#080808   gui=NONE
"hi Pmenu            guifg=NONE          guibg=NONE      gui=NONE
"hi PmenuSel         guifg=NONE          guibg=#5F5F5F   gui=NONE
"hi Question         guifg=#AFD787       guibg=NONE      gui=bold
"hi SignColumn       guifg=NONE          guibg=#3A3A3A   gui=NONE
""hi StatusLine       guifg=#EEEEEE       guibg=#000000   gui=bold
""hi StatusLineNC     guifg=#5F5F5F       guibg=#000000   gui=NONE
""hi TabLine          guifg=#5F5F5F       guibg=#000000   gui=NONE
""hi TabLineFill      guifg=#5F5F5F       guibg=#000000   gui=NONE
""hi TabLineSel       guifg=#EEEEEE       guibg=#000000   gui=bold
"hi Title            guifg=#EEEEEE       guibg=NONE      gui=NONE
"hi Underlined       guifg=NONE          guibg=NONE      gui=NONE
""hi VertSplit        guifg=#4E4E4E       guibg=#000000   gui=NONE
""hi Visual           guifg=NONE          guibg=#303030   gui=NONE
"hi WarningMsg       guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
"hi WildMenu         guifg=#1C1C1C       guibg=#FFAF5F   gui=NONE
