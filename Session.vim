let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let Gray600 = "#757575"
let WindowBG = "#080808"
let Taboo_tabs = ""
let Black = "#000000"
let Green600 = "#43A047"
let Gray500 = "#9E9E9E"
let Green500 = "#4CAF50"
let Gray50 = "#FAFAFA"
let Gray400 = "#BDBDBD"
let Green400 = "#66BB6A"
let GreenA400 = "#00E676"
let LineBG = "#0F0F0F"
let Gray300 = "#E0E0E0"
let Green300 = "#81C784"
let Gray900 = "#212121"
let Gray200 = "#EEEEEE"
let Green900 = "#1B5E20"
let Green200 = "#A5D6A7"
let GreenA200 = "#69F0AE"
let Gray800 = "#424242"
let VisualBG = "#0F0F0F"
let Gray100 = "#F5F5F5"
let Green800 = "#2E7D32"
let White = "#FFFFFF"
let Green100 = "#C8E6C9"
let GreenA100 = "#B9F6CA"
let Gray700 = "#616161"
let Green700 = "#388E3C"
let GreenA700 = "#00C853"
let Green50 = "#E8F5E9"
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 my/dots/init.vim
badd +1 my/dots/init.vim
argglobal
silent! argdel *
set stal=2
set splitbelow splitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
if has('nvim') | tcd ~/my | endif
tabnew
set splitbelow splitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
if has('nvim') | tcd ~/my/proj | endif
tabedit my/dots/init.vim
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 43 + 45) / 90)
exe '2resize ' . ((&lines * 43 + 45) / 90)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
if bufexists('my/dots/init.vim') | buffer my/dots/init.vim | else | edit my/dots/init.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 43 + 45) / 90)
exe '2resize ' . ((&lines * 43 + 45) / 90)
if has('nvim') | tcd ~/my/dots | endif
tabnext 3
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
