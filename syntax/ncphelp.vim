" Vim syntax file
" Language: NCP Endpoint Policy
" Maintainer:   Bernhard Walle <bernhard@bwalle.de>
" Version:      0.1

" Based on BASIC syntax file of vim.
"

if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'java'
endif

if version < 600
  so <sfile>:p:h/html.vim
else
  runtime! syntax/html.vim
  unlet b:current_syntax
endif


let s:cpo_save = &cpo
set cpo&vim

" A bunch of useful ncphelp keywords

syn match ncphelpStatement  /\.FUNCTION/
syn match ncphelpStatement  /\.FILENAME/
syn match ncphelpStatement  /\.VERSION/
syn match ncphelpStatement  /\.PARAM/
syn match ncphelpStatement  /\.PARAMDESC/
syn match ncphelpStatement  /\.NOTE/
syn match ncphelpStatement  /\.DECLARE/
syn match ncphelpStatement  /\.DESC/
syn match ncphelpStatement  /\.SAMPLE/
syn match ncphelpStatement  /\.RETURN/
syn match ncphelpStatement  /\.SEEALSO/
syn match ncphelpStatement  /\.PARENTFILENAME/
syn match ncphelpStatement  /\.GENERAL1/

syn region ncphelpComment   start="#" end="$"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ncphelp_syntax_inits")
  command -nargs=+ HiLink hi def link <args>

  HiLink ncphelpStatement   Statement
  HiLink ncphelpComment     Comment

  delcommand HiLink
endif

let b:current_syntax = "ncphelp"

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=4 sw=4 et:
