" Vim color file
let colors_name = "mycolors"

hi clear
if exists("syntax_on")
  syntax reset
endif

"hi! default link goType Type
"hi! default link goComment Comment
"syntax on

"https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
"https://github.com/dikiaap/minimalist/blob/master/colors/minimalist.vim
"... ctermfg=255     ctermbg=232     cterm=NONE ...

"let g:my_style_normal = 'guifg=#c6c6c6 guibg=#080808 gui=NONE'
"execute 'hi Normal ' g:my_style_normal


" :help highlight-groups
" :highlight
" :source %
hi ColorColumn      guifg=NONE          guibg=#121212   gui=NONE
hi Cursor           guifg=#1C1C1C       guibg=#EEEEEE   gui=NONE
hi CursorColumn     guifg=NONE          guibg=#121212   gui=NONE
hi CursorLine       guifg=NONE          guibg=#121212   gui=NONE
hi CursorLineNr     guifg=#5F5F5F       guibg=#121212   gui=NONE
hi DiffAdd          guifg=#EEEEEE       guibg=#5F8700   gui=bold
hi DiffChange       guifg=NONE          guibg=NONE      gui=NONE
hi DiffDelete       guifg=#D75F5F       guibg=NONE      gui=NONE
hi DiffText         guifg=#EEEEEE       guibg=#005F87   gui=bold
hi Directory        guifg=#D7AF5F       guibg=NONE      gui=NONE
hi ErrorMsg         guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
hi FoldColumn       guifg=#87D7FF       guibg=#000000   gui=NONE
hi Folded           guifg=#666666       guibg=#1C1C1C   gui=NONE
hi IncSearch        guifg=#1C1C1C       guibg=#5FAFFF   gui=NONE
hi LineNr           guifg=#5F5F5F       guibg=#1C1C1C   gui=NONE
hi MatchParen       guifg=NONE          guibg=NONE      gui=underline
hi MoreMsg          guifg=#AFD787       guibg=NONE      gui=NONE
hi NonText          guifg=#1C1C1C       guibg=#080808   gui=NONE
hi Normal           guifg=#c6c6c6       guibg=#080808   gui=NONE
hi Pmenu            guifg=NONE          guibg=NONE      gui=NONE
hi PmenuSel         guifg=NONE          guibg=#5F5F5F   gui=NONE
hi Question         guifg=#AFD787       guibg=NONE      gui=bold
hi Search           guifg=NONE          guibg=NONE      gui=underline
hi SignColumn       guifg=NONE          guibg=#3A3A3A   gui=NONE
hi StatusLine       guifg=#EEEEEE       guibg=#000000   gui=bold
hi StatusLineNC     guifg=#5F5F5F       guibg=#000000   gui=NONE
hi TabLine          guifg=#5F5F5F       guibg=#000000   gui=NONE
hi TabLineFill      guifg=#5F5F5F       guibg=#000000   gui=NONE
hi TabLineSel       guifg=#EEEEEE       guibg=#000000   gui=bold
hi Title            guifg=#EEEEEE       guibg=NONE      gui=NONE
hi Underlined       guifg=NONE          guibg=NONE      gui=NONE
hi VertSplit        guifg=#4E4E4E       guibg=#000000   gui=NONE
hi Visual           guifg=NONE          guibg=#303030   gui=NONE
hi WarningMsg       guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
hi WildMenu         guifg=#1C1C1C       guibg=#FFAF5F   gui=NONE

hi NERDTreeUp       guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeDir      guifg=#C6C6C6       guibg=NONE      gui=bold
hi NERDTreeDirSlash guifg=#C6C6C6       guibg=NONE      gui=NONE
hi NERDTreeFile     guifg=#606060       guibg=NONE      gui=NONE
hi NERDTreeCWD      guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeOpenable guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeClosable guifg=#D75F5F       guibg=NONE      gui=NONE

" Syntax
hi Boolean          guifg=#eeeeee       guibg=NONE      gui=NONE
hi Character        guifg=#eeeeee       guibg=NONE      gui=NONE
hi Comment          guifg=#eeeeee       guibg=NONE      gui=NONE
hi Conditional      guifg=#eeeeee       guibg=NONE      gui=NONE
hi Constant         guifg=#eeeeee       guibg=NONE      gui=NONE
hi Define           guifg=#eeeeee       guibg=NONE      gui=NONE
hi Error            guifg=#eeeeee       guibg=#D75F5F   gui=NONE
hi Float            guifg=#eeeeee       guibg=NONE      gui=NONE
hi Function         guifg=#eeeeee       guibg=NONE      gui=NONE
hi Identifier       guifg=#eeeeee       guibg=NONE      gui=italic
hi Keyword          guifg=#eeeeee       guibg=NONE      gui=NONE
hi Label            guifg=#eeeeee       guibg=NONE      gui=NONE
hi Number           guifg=#eeeeee       guibg=NONE      gui=NONE
hi Operator         guifg=#eeeeee       guibg=NONE      gui=NONE
hi PreCondit        guifg=#eeeeee       guibg=NONE      gui=NONE
hi PreProc          guifg=#eeeeee       guibg=NONE      gui=NONE
hi Repeat           guifg=#eeeeee       guibg=NONE      gui=NONE
hi Special          guifg=#eeeeee       guibg=NONE      gui=NONE
hi SpecialComment   guifg=#eeeeee       guibg=NONE      gui=NONE
hi SpecialKey       guifg=#eeeeee       guibg=#3A3A3A   gui=NONE
hi SpellBad         guifg=#eeeeee       guibg=#D75F5F   gui=undercurl
hi SpellCap         guifg=#eeeeee       guibg=#5FAFD7   gui=undercurl
hi SpellRare        guifg=#eeeeee       guibg=#AF87D7   gui=undercurl
hi SpellLocal       guifg=#eeeeee       guibg=#5FB3B3   gui=undercurl
hi Statement        guifg=#eeeeee       guibg=NONE      gui=NONE
hi StorageClass     guifg=#eeeeee       guibg=NONE      gui=italic
hi String           guifg=#eeeeee       guibg=NONE      gui=NONE
hi Structure        guifg=#eeeeee       guibg=NONE      gui=NONE
hi Tag              guifg=#eeeeee       guibg=NONE      gui=NONE
hi Todo             guifg=#eeeeee       guibg=#1C1C1C   gui=inverse,bold
hi Type             guifg=#eeeeee       guibg=NONE      gui=NONE

" Supports
hi cInclude                   guifg=#AF87D7       guibg=NONE      gui=NONE " C++
hi cOperator                  guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cppStatement               guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cssAttr                    guifg=#D7875F       guibg=NONE      gui=NONE " CSS/CSS3
hi cssAttrComma               guifg=#EEEEEE       guibg=NONE      gui=NONE
hi cssBoxProp                 guifg=#AFD7D7       guibg=NONE      gui=NONE
hi cssBraces                  guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssClassName               guifg=#FFAF5F       guibg=NONE      gui=NONE
hi cssColor                   guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssCommonAttr              guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cssFontAttr                guifg=#AFD787       guibg=NONE      gui=NONE
hi cssFunctionName            guifg=#5FAFFF       guibg=NONE      gui=NONE
hi cssNoise                   guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssProp                    guifg=#AFD7D7       guibg=NONE      gui=NONE
hi cssPseudoClass             guifg=#AF87D7       guibg=NONE      gui=NONE
hi cssPseudoClassId           guifg=#AF87D7       guibg=NONE      gui=NONE
hi cssTagName                 guifg=#D75F5F       guibg=NONE      gui=NONE
hi cssUIAttr                  guifg=#D7875F       guibg=NONE      gui=NONE
hi cssUnitDecorators          guifg=#D7875F       guibg=NONE      gui=NONE
hi cssURL                     guifg=#EEEEEE       guibg=NONE      gui=italic
hi cssValueLength             guifg=#D7875F       guibg=NONE      gui=NONE
hi cssValueNumber             guifg=#D7875F       guibg=NONE      gui=NONE
hi cssVendor                  guifg=#AF87D7       guibg=NONE      gui=NONE
hi htmlArg                    guifg=#FFAF5F       guibg=NONE      gui=NONE " HTML/HTML5
hi htmlEndTag                 guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlScriptTag              guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlSpecialChar            guifg=#FFAF5F       guibg=NONE      gui=NONE
hi htmlSpecialTagName         guifg=#D75F5F       guibg=NONE      gui=NONE
hi htmlTag                    guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlTagName                guifg=#D75F5F       guibg=NONE      gui=NONE
hi javaScriptBoolean          guifg=#D7875F       guibg=NONE      gui=NONE " JavaScript
hi javaScriptBraces           guifg=#5FAFD7       guibg=NONE      gui=NONE
hi javaScriptConditional      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptException        guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptFunction         guifg=#AF87D7       guibg=NONE      gui=italic
hi javaScriptGlobal           guifg=#EEEEEE       guibg=NONE      gui=NONE
hi javaScriptIdentifier       guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptLabel            guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptMessage          guifg=#EEEEEE       guibg=NONE      gui=NONE
hi javaScriptNull             guifg=#D7875F       guibg=NONE      gui=NONE
hi javaScriptNumber           guifg=#D7875F       guibg=NONE      gui=NONE
hi javaScriptOperator         guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptParens           guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptRegexpString     guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptRepeat           guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptSpecial          guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptStatement        guifg=#AF87D7       guibg=NONE      gui=NONE
hi markdownCode               guifg=#AF87D7       guibg=NONE      gui=NONE " Markdown
hi markdownCodeBlock          guifg=#AF87D7       guibg=NONE      gui=NONE
hi markdownCodeDelimiter      guifg=#9E9E9E       guibg=NONE      gui=NONE
hi markdownError              guifg=#D75F5F       guibg=NONE      gui=NONE
hi markdownHeadingDelimiter   guifg=#AFD787       guibg=NONE      gui=NONE
hi markdownUrl                guifg=#D7875F       guibg=NONE      gui=NONE
hi phpBoolean                 guifg=#D7875F       guibg=NONE      gui=NONE " PHP
hi phpClass                   guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpClassDelimiter          guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpClassExtends            guifg=#AFD787       guibg=NONE      gui=NONE
hi phpClassImplements         guifg=#AFD787       guibg=NONE      gui=NONE
hi phpCommentStar             guifg=#585858       guibg=NONE      gui=NONE
hi phpCommentTitle            guifg=#585858       guibg=NONE      gui=NONE
hi phpDocComment              guifg=#585858       guibg=NONE      gui=NONE
hi phpDocIdentifier           guifg=#585858       guibg=NONE      gui=NONE
hi phpDocParam                guifg=#585858       guibg=NONE      gui=NONE
hi phpDocTags                 guifg=#666666       guibg=NONE      gui=NONE
hi phpFunction                guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpFunctions               guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpIdentifier              guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpInclude                 guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpKeyword                 guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpMethod                  guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpNumber                  guifg=#D7875F       guibg=NONE      gui=NONE
hi phpOperator                guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpParent                  guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpMemberSelector          guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpMethodsVar              guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpStaticClasses           guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpStringDouble            guifg=#AFD787       guibg=NONE      gui=NONE
hi phpStringDelimiter         guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpStringSingle            guifg=#AFD787       guibg=NONE      gui=NONE
hi phpSuperglobals            guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpType                    guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpUseClass                guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpVarSelector             guifg=#87D7FF       guibg=NONE      gui=NONE
hi pythonConditional          guifg=#AF87D7       guibg=NONE      gui=NONE " Python
hi pythonDecorator            guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonException            guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonFunction             guifg=#5FAFD7       guibg=NONE      gui=NONE
hi pythonInclude              guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonNumber               guifg=#D7875F       guibg=NONE      gui=NONE
hi pythonOperator             guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonRepeat               guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonStatement            guifg=#AF87D7       guibg=NONE      gui=NONE
hi pythonTodo                 guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyBlockParameter         guifg=#D7875F       guibg=NONE      gui=NONE " Ruby
hi rubyClass                  guifg=#AF87D7       guibg=NONE      gui=NONE
hi rubyClassVariable          guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyConstant               guifg=#FFAF5F       guibg=NONE      gui=italic
hi rubyControl                guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyException              guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyFunction               guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyInclude                guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyInstanceVariable       guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyInterpolationDelimiter guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyOperator               guifg=#AF87D7       guibg=NONE      gui=NONE
hi rubyPseudoVariable         guifg=#D7875F       guibg=NONE      gui=NONE
hi rubyRegexp                 guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyRegexpDelimiter        guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyStringDelimiter        guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubySymbol                 guifg=#AFD787       guibg=NONE      gui=NONE
hi sassClass                  guifg=#FFAF5F       guibg=NONE      gui=NONE " Sass
hi sassClassChar              guifg=#FFAF5F       guibg=NONE      gui=NONE
hi sassFunction               guifg=#EEEEEE       guibg=NONE      gui=NONE
hi sassInclude                guifg=#5FAFD7       guibg=NONE      gui=NONE
hi sassVariable               guifg=#D7875F       guibg=NONE      gui=NONE
hi shFunction                 guifg=#5FAFD7       guibg=NONE      gui=NONE " Shell
hi shOperator                 guifg=#87D7FF       guibg=NONE      gui=NONE
hi shStatement                guifg=#5FAFD7       guibg=NONE      gui=NONE
hi shTestOpr                  guifg=#87D7FF       guibg=NONE      gui=NONE
hi shVariable                 guifg=#EEEEEE       guibg=NONE      gui=NONE
hi xmlAttrib                  guifg=#D75F5F       guibg=NONE      gui=NONE " XML
hi xmlCdataStart              guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlCdataCdata              guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlEndTag                  guifg=#D75F5F       guibg=NONE      gui=NONE
hi xmlEntity                  guifg=#D7875F       guibg=NONE      gui=NONE
hi xmlEntityPunct             guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlEqual                   guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlProcessingDelim         guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlTag                     guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlTagName                 guifg=#D75F5F       guibg=NONE      gui=NONE
