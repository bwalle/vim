" ----------------- Settings --------------------------------------------- {{{
" get easier to use and more user friendly vim defaults
set nocompatible

if $OS == "Windows_NT"
    let $VIMDIR = "$HOME/vimfiles"
else
    let $VIMDIR = "$HOME/.vim"
endif

" Autokommando loeschen
autocmd! BufReadPost *

set lazyredraw

"
" Only do this part when compiled with support for autocommands. 
if has("autocmd") 
  " When editing a file, always jump to the last known cursor position. 
  " Don't do it when the position is invalid or when inside an event handler 
  " (happens when dropping a file on gvim). 
  autocmd BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" | 
    \ endif 
 
endif " has("autocmd")

" autowrite: Automatisches Speichern beim Aufrufen von externen Kommandos
set autowrite

" Maus einschalten
set mouse=a

set laststatus=2
set statusline=%-3.3n\ %t\ \ %h%m%r%w\ %(%)\ \ \ %=\ %-10.(L%l,C%c%V%)\ %<%P

" errorbells: keine akustische Fehlermeldung
set noerrorbells

" vertical diffs always
if v:version >= 700
    set diffopt=filler,vertical
endif
set diffopt+=iwhite

" also restore colorscheme in sessions
set sessionoptions+=globals

" Quickfix für cscope verwenden
set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

" store window size
if v:version >= 700
    set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,globals,resize
endif

" Ignore object files
set wildignore=*.o,*.fasl,CVS,*.o.cmd

" Language
if v:version >= 700
    set spelllang=en_us
endif

" no bell
set vb t_vb=

" Filetype Plugin
filetype plugin on

" automatisch einrücken
filetype indent on

" ignorecase:  in Suchmustern Groß-/Kleinschreibung igonieren, wenn kein 
" Buchstabe in Großbuchstaben eingegeben wurde
set ignorecase smartcase

" do not unload buffers
set hidden

" show 3 lines always when scrolling
set scrolloff=1

" same vertically
set sidescroll=1
set sidescrolloff=3

" inkrementelle Suche
set incsearch

" Zeilenumbruch anzeigen
set showbreak=+
set cpoptions-=n

" Includepath
"set path=.,/usr/include,/usr/lib/qt3/include/,/usr/include/g++,
"set path=**,.

if version >= 700
    " kein Backupmodus (langsam auf SSH)
    set backupcopy=auto,breakhardlink
endif

" aktuelle Tags
set tags=./tags,./TAGS,tags,TAGS

" Nur zwischen Woertern umbrechen
set linebreak

" komisches Menü bei Kommandozeilenvervollständigung
set wildmenu
" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

set wak=no
set imdisable

" zusammengehörige Klammern anzeigen
set showmatch

" don't show much 'hit enter' prompts
set nosc
set shortmess=atOI
set noshowmode

" Einstellungen in Dateien setzen `modelines'
set modelines=5

" allow backspacing over everything in insert mode
set bs=2

" always set autoindenting on
set ai

" read/write a .viminfo file, don't store more
" than 50 lines of registers
set viminfo='20,\"50

" keep 50 lines of command line history
set history=1000

" show the cursor position all the time
set noruler

" dark background
set background=dark

" save the swapfile /tmp instead of the current directory (makes vim more
" responsive when using on slow directories such as NFS or even sshfs)
if has("unix")
    set directory=/tmp
endif

" Print
set printoptions=right:15mm,left:15mm,duplex:on
"set printexpr=system('gtklp'\ .\ '\ '\ .\ v:fname_in)\ .\ delete(v:fname_in)\ +\ v:shell_error
set printfont=Courier:h8

" shortcut for cd in current directory
command! CD cd %:p:h


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
   syntax on
endif

" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78
autocmd FileType tex  set tw=78

" Subversion commit files
autocmd BufRead svn-commit.tmp* set tw=78 ft=svn
autocmd BufRead COMMIT_EDITMSG setlocal ft=gitcommit noml spelllang=en_gb spell

" Tabs 
set et
autocmd BufRead *.make set ft=make
autocmd Filetype make set noet
autocmd Filetype automake set noet
autocmd Filetype c,cpp set noet ts=8 sw=8 tw=100
autocmd Filetype asm set ts=8 sw=8

" HTML
autocmd FileType html,xml,xsl let g:closetag_html_style=1
autocmd FileType html,xml,xsl let b:unaryTagsStack="area base br dd dt hr img input link meta param"

" kconfig files
autocmd FileType kconfig set ts=8 sw=8 noet

" lighttpd config
au BufNewFile,BufRead /etc/lighttpd/*.conf,lighttpd.conf set filetype=lighttpd 

" When starting to edit a file:
"   For C and C++ files set formatting of comments and set C-indenting on.
"   For other files switch it off.
"   Don't change the order, it's important that the line with * comes first.
"autocmd FileType *           set formatoptions=tcql nocindent comments&
autocmd FileType c,cpp,java  setlocal cindent 
autocmd FileType c,cpp,java  setlocal cinoptions=W1s,:0,N-s,g0

autocmd FileType tex         set sw=2 ts=2 et
let g:Tex_SmartKeyQuote = 0

"
let g:Tb_UseSingleClick = 1

" complection
if version >= 700
  set completeopt=menu,longest
endif
set complete=.,w,b,u

" show trailing EOL
" When vim used as vimpager, then vim is called with LANG=en_US and has
" problems to use that UTF-8 character. Therefore, we don't use listchars
" in that case because we don't need it anyway.
if version >= 700 && $OS != "Windows_NT" && $LANG != "en_US"
  set listchars=tab:»-,trail:\ ,eol:.,nbsp:_
else
  set listchars=tab:>-,trail:\ ,eol:.,nbsp:_
endif

"                                                                          }}}
" ----------------- Look ------------------------------------------------- {{{

if &term == "screen"
  set ttymouse=xterm
endif

if &term == "rxvt-unicode" && !(&diff)
  set t_Co=8
endif

"                                                                          }}}
" ----------------- Konfiguration von Plugins ---------------------------- {{{

" alternate
let g:alternateExtensions_hxx = "cxx,inl"
let g:alternateExtensions_cxx = "hxx,h,inl"
let g:alternateSearchPath = "sfr:../source,sfr:../src,sfr:../include,sfr:../inc,reg:/include/src/g,reg:/src/include/g"
let g:alternateNoDefaultAlternate = 1

" Make
set makeprg=bmake\ \\\|&\ vim_error_filter

" Doxygen
let g:load_doxygen_syntax = 0
let g:doxygen_enhanced_colour = 0

" Highlight
let c_no_curly_error = 1

" Lusty Explorer
let g:LustyExplorerSuppressRubyWarning = 1
let g:LustyJugglerShowKeys = 1

" PHP
let php_folding = 2

" Bash folding
let g:sh_fold_enabled=1

" Perl
let perl_include_pod = 1
let perl_fold = 1
let perl_nofold_packages = 0

" silver searcher
let g:ackprg = 'ag --vimgrep'

" Changelog (RPM spec)
au FileType spec map <buffer> <Leader>o <Plug>SpecChangelog
au FileType spec lan time POSIX
let spec_chglog_format = "%a %b %d %Y - Bernhard Walle <bernhard@bwalle.de>"

" Commentify
let g:EnhCommentifyUseBlockIndent = 'Yes'
let g:EnhCommentifyBindInInsert = 'No'

let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0
let OmniCpp_MayCompleteScope = 0

let Tmenu_ctags_cmd = 'vimtags'
let g:EnhCommentifyMultiPartBlocks = 'yes'
let g:EnhCommentifyRespectIndent = 'yes'
let g:EnhCommentifyPretty = 'yes'

" Taglist
nnoremap <silent> <F8> :TagbarToggle<CR>
let Tlist_Process_File_Always = 0
let Tlist_Use_Right_Window = 1
let g:Tlist_Enable_Fold_Column = 0
let Tlist_Compact_Format = 1
let Tlist_Display_Prototype = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_Menu = 1
let Tlist_Max_Submenu_Items = 50
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin" || s:uname == "Darwin\n"
	let g:tagbar_ctags_bin = "/opt/local/bin/ctags"
  endif
endif

" Tagbar
let g:tagbar_sort = 0

" bufExplorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerOpenMode=1
let g:bufExplorerSplitHorzSize = 15
let g:bufExplorerExcludeQuickfix = 1
let g:bufExplorerSplitType='v'

" CodingStyle
let g:coding_style_ini=expand("~/.vim//coding_style.ini")

" compview
let g:cvWindowPosition = 1

" quilthelper
if v:version >= 700
    let g:qh_verbose=0
    let g:qh_refresh_patch=0
    let g:qh_exclude_file_patterns = ['^series$', '^\.gdbinit$', '^.config$']
endif

" don't use taglist on Windows
if $OS == "Windows_NT"
    let loaded_taglist = 'no'
endif

" undo/redo
if v:version >= 703
    set undodir=$VIMDIR/undo
    set undofile
    set undolevels=1000 "maximum number of changes that can be undone
    set undoreload=10000 "maximum number lines to save for undo on a buffer reload
    set undodir=~/.vim/undo
endif

" gitv
let g:Gitv_OpenHorizontal = 1
let g:Gitv_WipeAllOnClose = 1

" svndiff
"let g:svndiff_autoupdate = 0

" quiltdiff
"let g:quiltdiff_autoupdate = 0

let g:clang_complete_auto = 0
let g:clang_user_options = '|| exit 0'

" command t
nmap <silent> <Leader>g :CommandTBuffer<CR>

"                                                                          }}}
" ----------------- Tasten ----------------------------------------------- {{{

" Pos1 soll auf das erste Zeichen springen
imap <home> <esc>^i

" Ctrl-Delete wie in grafischen Editoren
imap <C-Backspace> <C-W>

noremap <silent> <F4> :botright cwindow<CR>
autocmd BufReadPost quickfix setlocal nowrap

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" No hightlight when searching
set hlsearch

" short message
set shm=a

" akt. Datum
imap <F2> <esc>:lan tim en_US<CR>a<C-R>=strftime("%a %b %d %Y")<CR><Esc>:lan tim de_DE.utf-8<CR>a
imap <F3> <esc>:lan tim en_US<CR>a<C-R>=strftime("%a %b %e %H:%M:%S %Z %Y")<CR><Esc>:lan tim de_DE.utf-8<CR>a

autocmd FileType svn    map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg 
autocmd FileType svn    set binary noeol
map <F7> :mak!<CR>

map <F6> :!!<CR>
imap <F6> <ESC>:!!<CR>i 

" changelog mapping
map <buffer> <LocalLeader>l <Plug>SpecChangelog
nnoremap <silent> <F12> :silent !exo-open --launch TerminalEmulator&<CR>
inoremap <silent> <F12> <ESC>:silent !exo-open --launch TerminalEmulator&<CR>a

nmap <silent> <C-N> :silent noh<CR>
"let g:qb_hotkey = "<F2>" 
"let g:dumbbuf_hotkey = "<F2>"

noremap <silent> <F2> :BufExplorer<CR>

"                                                                          }}}
" ----------------- Autocmds --------------------------------------------- {{{
augroup filetypedetect
  autocmd FileType html set sw=2 ts=2 et
  autocmd BufRead *.qrc set ft=xml
  autocmd BufNewFile,BufRead *.lds.S  set ft=ld
  autocmd BufNew,BufRead *.asl set ft=asl
  autocmd BufNew,BufRead *.dsl set ft=asl
  autocmd BufRead *bugzilla.novell.com* set ft=mail
  autocmd BufRead SConstruct set ft=python
  autocmd BufRead *.adoc set ft=asciidoc
  autocmd BufRead *tmpmsg* set ft=mail nonumber
  autocmd BufRead kontact* set ft=mail nonumber tw=72
  autocmd BufRead kmail* set ft=mail nonumber tw=72
  autocmd BufRead,BufNewFile hg-editor-*.txt set ft=hgcommit
  autocmd BufRead,BufNewFile *.gcov set ft=gcov
augroup END

" autocmd BufEnter,BufReadPost,BufRead,BufNewFile * if &diff | set nonumber |  endif

au FileType sh set sw=4 ts=4 et
if filereadable(expand($VIMDIR . "/work"))
    let g:changelog_username="Bernhard Walle <bernhard.walle@ncp-e.com>"
    iabbrev soff Signed-off-by: Bernhard Walle <bernhard.walle@ncp-e.com>
    iabbrev email Bernhard Walle <bernhard.walle@ncp-e.com>
    " my colleague likes tabs, well, I don't...
else
    let g:changelog_username="Bernhard Walle <bernhard@bwalle.de>"
    iabbrev soff Signed-off-by: Bernhard Walle <bernhard@bwalle.de>
    iabbrev email Bernhard Walle <bernhard@bwalle.de>
endif
let g:changes_mail="bernhard@bwalle.de"
au FileType changes set tw=67
au FileType changelog set ts=8

iabbrev qheader From: <CR>Subject: <Up>

au BufRead,BufNewFile *.wiki set filetype=Wikipedia nonumber
au BufRead,BufNewFile *wiki01.iis.fhg.de* setlocal filetype=moin
    \ nonumber spelllang=de_de spell tw=0
au BufRead,BufNewFile *wiki01*            setlocal filetype=moin
    \ nonumber spelllang=de_de spell tw=0
au BufRead,BufNewFile *newton*.txt setlocal filetype=moin
    \ nonumber spelllang=de_de spell tw=0
au BufRead,BufNewFile *bwalle.de* setlocal filetype=dokuwiki nonumber
au BufRead,BufNewFile *bugzilla* setlocal filetype=mail nonumber
au BufRead,BufNewFile *edit-server* setlocal filetype=dokuwiki nonumber
au BufRead,BufNewFile *intraweb.ncp.de* setlocal filetype=dokuwiki nonumber spelllang=de_de
au BufRead,BufNewFile *redmine* setlocal filetype=redminewiki nonumber spelllang=de_de

au BufRead,BufNewFile *.bb set filetype=sh

set number
au FileType mail set nonumber

"                                                                          }}}
" ----------------- Kommandos -------------------------------------------- {{{


" svndiff
command SvnDiffPrev :call Svndiff("prev")
command SvnDiffNext :call Svndiff("next")
command SvnDiffClear :call Svndiff("clear")


fun! CopyToBothClipboards(expression)
    let @* = expand(a:expression)
    let @+ = expand(a:expression)
endfun

" copy the name of the current file to the clipboard
command! Cpp call CopyToBothClipboards("%:p")
command! Cpf call CopyToBothClipboards("%:t")
command! Cpd call CopyToBothClipboards("%:p:h")

" Arch
command! Amd5 :r! makepkg -g 2>/dev/null

command! GnuIndent set cinoptions={.5s,:.5s,+.5s,t0,g0,^-2,e-2,n-2,p2s,(0,=.5s formatoptions=croql cindent sw=4 ts=8 noet
command! KernelIndent setlocal cinoptions=:0,l1,t0,g0 sw=8 ts=8 sts=0 noet



"command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
"	 	\ | wincmd p | diffthis

"                                                                          }}}
" ----------------- Abkürzungen ------------------------------------------ {{{

" eigener digraph
dig oo 8226

" Dokuwiki Überschriften (h1 bis h5)
au FileType dokuwiki iabbrev h1 ====== ======<Left><Left><Left><Left><Left><Left><Left>
au FileType dokuwiki iabbrev h2 ===== =====<Left><Left><Left><Left><Left><Left>
au FileType dokuwiki iabbrev h3 ==== ====<Left><Left><Left><Left><Left>
au FileType dokuwiki iabbrev h4 === ===<Left><Left><Left><Left>
au FileType dokuwiki iabbrev h5 == ==<Left><Left><Left>

" Wikipedia: Überschriften (h1 bis h5)
au FileType Wikipedia iabbrev h1 == ==<Left><Left><Left>
au FileType Wikipedia iabbrev h2 === ===<Left><Left><Left><Left>
au FileType Wikipedia iabbrev h3 ==== ====<Left><Left><Left><Left><Left>
au FileType Wikipedia iabbrev h4 ===== =====<Left><Left><Left><Left><Left><Left>
au FileType Wikipedia iabbrev h5 ====== ======<Left><Left><Left><Left><Left><Left><Left>

" Wikipedia: Überschriften (h1 bis h5)
au FileType moin iabbrev h1 = =<Left><Left>
au FileType moin iabbrev h2 == ==<Left><Left><Left>
au FileType moin iabbrev h3 === ===<Left><Left><Left><Left>
au FileType moin iabbrev h4 ==== ====<Left><Left><Left><Left><Left>
au FileType moin iabbrev h5 ===== =====<Left><Left><Left><Left><Left><Left>

" Wikipedia: tt
au FileType Wikipedia iabbrev tt <tt></tt><Left><Left><Left><Left><Left>

" Tipp, Hinweis, usw
au FileType moin iabbrev mointip {{{#!wiki tip<CR>'''Tipp'''<CR><CR><CR>}}}<Up>
au FileType moin iabbrev toc <<TableOfContents(2)>>
au FileType moin iabbrev pre {{{<CR>}}}<Up>
au FileType moin iabbrev footnote <<FootNote()>><Left><Left><Left>

autocmd FileType c,cpp setlocal fdm=marker
autocmd FileType c,cpp iabbrev begin_c #ifdef __cplusplus<CR>extern "C" {<CR>#endif<CR><C-d>
autocmd FileType c,cpp iabbrev end_c #ifdef __cplusplus<CR>}<CR>#endif<CR><C-d>


autocmd FileType vcscommit setlocal tw=80 spelllang=en_gb spell
autocmd FileType gitcommit setlocal spelllang=en_gb spell
autocmd FileType perl setlocal fdm=syntax
autocmd FileType gitannotate setlocal nowrap


set tabline=%!MyTabLine()

function! MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " set the tab page number (for mouse clicks)
        let s .= '%' . (i + 1) . 'T'

        " the label is made by MyTabLabel()
        let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
    endfor

    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'

    return s
endfunction

function! MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let bufname = bufname(buflist[winnr - 1])
    if filereadable(bufname)
        let displayname = fnamemodify(bufname, ':p:t')
    elseif strlen(bufname) == 0
        let displayname = '[New]'
    else
        let displayname = bufname
    endif

    if strlen(displayname) > 17
        let displayname = '...' . displayname[-20:]
    endif

    return displayname
endfunction

autocmd FileChangedShell * call <SID>FileChanged()

function! s:FileChanged()
    echohl WarningMsg

    if v:fcs_reason == 'deleted'
        let v:fcs_choice = 'ask'
        echo 'File deleted!'
    else
        let v:fcs_choice = 'reload'
        echo 'File changed!'
    endif

    echohl None
endfunction

function! QtClassDoc()
    let qt_dir = "/usr/share/doc/qt/html/"
    let class = tolower(expand("<cword>"))
    silent execute "!exo-open --launch WebBrowser " . qt_dir . class . ".html &>/dev/null" . " &" | redraw!
endfunction

function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "[^a-zA-Z0-9]", "_", "g") . "_"
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename . " "
  execute "normal! Go#endif /* " . gatename . " */"
  normal! ko
endfunction
command! IncGuard :call s:insert_gates()

" Opens an http URL on the current editor line in our favorite web browser
function OpenURL()
  let line = getline (".")
  let line = matchstr (line, "http://[^ ,;\t]*")
  exec "!/usr/bin/chromium ".line."&"
endfunction
map <F11> <Esc>:call OpenURL()<CR>

" iTerm: set the cursor shape like in gvim
if !has("gui_running")
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    if (v:version == 704 && has('patch687')) || v:version > 704
        let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    endif
endif

command! NcpCppHeader :0r $VIMDIR/ncp_cpp_header

" vim: set sw=4 ts=4 ft=vim foldmethod=marker:
