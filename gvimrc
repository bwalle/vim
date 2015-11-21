" Make command line two lines high
set ch=2

" Hide the mouse when typing text
set nomousehide
set mousemodel=extend

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Fenstergröße beim Starten
set lines=54
if &diff
    set columns=180
else
    set columns=120
endif

" Cursorzeile anzeigen
set nocursorline

" Schriftart und Icons
if has("gui_gtk2")
   " set guifontset=""
   " set guifont=Lucida\ Sans\ Typewriter\ 10
   " set guifont=Droid\ Sans\ Mono\ 10
   " set guifont=Inconsolata\ 12
   " set guifont=Fixed\ 11
   set guifont=DejaVu\ Sans\ Mono\ 10.8
   " set guifont=Inconsolata\ 12
   " set guifont=Fixed\ 11
   " set guifont=Terminus\ 12
   " set guifont=Liberation\ Mono\ 10
   " set guifont=Inconsolata-g\ Medium\ 10
   " set guifont=Source\ Code\ Pro\ 10.4
   set toolbariconsize=medium
endif
if has("gui_win32")
  set guifont=Consolas:h11:cANSI
endif
if has("gui_macvim")
  set guifont=Source\ Code\ Pro:h14
  set linespace=-1
	set transp=0
endif

" Virtueller Piep faktisch deaktivieren
set vb
set t_vb=""

" highlight when searching
set hlsearch

" break
if $OS != "Windows_NT" && $LANG != "en_US"
  set showbreak=»\ 
else
  set showbreak=>\ 
endif

" show line numbers
if &diff
  set nonumber
else
  set number
endif

" show the number in the tab line
set guitablabel=%{tabpagenr()}\ %t

highlight SpellErrors ctermfg=Red guifg=Red cterm=underline gui=underline term=reverse

" C++.
" menu Editieren.-SEP4- -.
" menu Editieren.C\ Header\ hinzufügen :call AddIfndefGuard()<CR>

" kein blinkender Cursor
set gcr=a:blinkoff0

set guioptions-=L
set guioptions-=g
set guioptions+=m " menu bar
set guioptions-=t " tearoff menus
set guioptions-=T " toolbar
"if !has("gui_macvim")
"  set guioptions+=c " console dialogs
"endif

" use GUI tabs only on Mac
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt

imap <M-1> <ESC>1gta
imap <M-2> <ESC>2gta
imap <M-3> <ESC>3gta
imap <M-4> <ESC>4gta
imap <M-5> <ESC>5gta
imap <M-6> <ESC>6gta
imap <M-7> <ESC>7gta
imap <M-8> <ESC>8gta
imap <M-9> <ESC>9gta

map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt

imap <D-1> <ESC>1gta
imap <D-2> <ESC>2gta
imap <D-3> <ESC>3gta
imap <D-4> <ESC>4gta
imap <D-5> <ESC>5gta
imap <D-6> <ESC>6gta
imap <D-7> <ESC>7gta
imap <D-8> <ESC>8gta
imap <D-9> <ESC>9gta

" Farbschema
set bg=dark
if has("gui_macvim")
    let g:solarized_italic=1
    colorscheme macvim
else
    let g:solarized_italic=1
    colorscheme monokai
endif
"LuciusBlackLowContrast

" Keine Strings und Zahlen in C-Kommentaren
if exists("c_comment_strings")
  unlet c_comment_strings
endif

" highlight WhitespaceEOL guibg=yellow
" match WhitespaceEOL /\s\+$/

aunmenu ToolBar.SaveAll
aunmenu ToolBar.SaveSesn
aunmenu ToolBar.LoadSesn

" CTRL-Tab is Next bufferwindow
noremap <C-Tab> <Esc>:bn<CR>
inoremap <C-Tab> <Esc>:bn<CR>a
noremap <S-C-Tab> <Esc>:bp<CR>
inoremap <S-C-Tab> <Esc>:bp<CR>a

if !has("gui_macvim")
  vnoremap <C-X> "+x
  vnoremap <C-C> "+y
  imap <C-V>		"+gP
  cmap <C-V>		<C-R>+

  " Pasting blockwise and linewise selections is not possible in Insert and
  " Visual mode without the +virtualedit feature.  They are pasted as if they
  " were characterwise instead.
  " Uses the paste.vim autoload script.

  exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
  exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

  " Use CTRL-Q to do what CTRL-V used to do
  noremap <C-Q>		<C-V>
endif

if has("gui_macvim")
  " map Command-Left/Right to switch tabs on Apples
  map <D-Left> gT
  map <D-Right> gt
  imap <D-Left> gT
  imap <D-Right> gt
  noremap <silent> <D-l> :BufExplorer<CR>
else
  " map Meta-Left/Right to switch tabs on real computers
  map <M-Left> gT
  map <M-Right> gt
  imap <M-Left> gT
  imap <M-Right> gt
  noremap <silent> <M-l> :BufExplorer<CR>
endif

" maximize vim both horizontally and vertically on Mac Vim
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz
endif

" omni-completion
imap <C-Space> <C-x><C-o>

" vim: set sw=2 ts=2 ft=vim foldmethod=marker:
