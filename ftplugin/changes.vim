" Vim filetype plugin file
" Language:         SUSE changes file
" Maintainer:       Bernhard Walle <bwalle@suse.de>
" Latest Revision:  2007-12-12
" Variables:
"   g:changes_mail -
"       description: the username to use in changes entries
"       default: try to deduce it from environment variables and system files.
" Local Mappings:
"   <Leader>o -
"       adds a new changelog entry for the current user for the current date.

if &filetype == 'changes'
  let b:did_ftplugin = 1

  let s:cpo_save = &cpo
  set cpo&vim

  " Format used for new entries to current date entry.
  if !exists('g:changes_mail')
    let g:changes_mail = $USER . "@" . system("domainname")
    let g:changes_mail = substitute(g:changes_mail, "\n", "", "")
  endif

  " Internal function to create a new entry in the ChangeLog.
  function! s:new_changes_entry()
    " Deal with 'paste' option.
    let save_paste = &paste
    let &paste = 1
    call cursor(1, 1)
    " Look for an entry for today by our user.
    let date = system("LC_ALL=POSIX TZ=Europe/Berlin date")
    let date = substitute(date, "\n", "", "")

    call append(0, '-------------------------------------------------------------------')
    call append(1, date. " - " . g:changes_mail)
    call append(2, '')
    call append(3, '- ')
    call append(4, '')

    call setpos('.', [0, 4, 4, 0])

    " And reset 'paste' option
    let &paste = save_paste
  endfunction

  map <buffer> <Leader>o <Esc>:call <SID>new_changes_entry()<CR>a
  command! -nargs=0 NewChangesEntry call s:new_changes_entry()

  let b:undo_ftplugin = "setl com< fo< et< ai<"

  setlocal comments=
  setlocal formatoptions+=t
  setlocal noexpandtab
  setlocal autoindent

  if &textwidth == 0
    setlocal textwidth=78
    let b:undo_ftplugin .= " tw<"
  endif

  let &cpo = s:cpo_save
  unlet s:cpo_save
endif
