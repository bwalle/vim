" Vim syntax file
" Language: NCP Endpoint Policy
" Maintainer:   Bernhard Walle <bernhard@bwalle.de>
" Version:      0.1

" Based on BASIC syntax file of vim.
"

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" A bunch of useful ncppolicy keywords

syn keyword ncppolicyStatement  AND and And
syn keyword ncppolicyStatement  OR or Or
syn keyword ncppolicyStatement  NOT not Not
syn keyword ncppolicyStatement  IF if If
syn keyword ncppolicyStatement  THEN then Then
syn keyword ncppolicyStatement  ELSE else Else
syn keyword ncppolicyStatement  ENDIF endif Endif
syn keyword ncppolicyStatement  END end End
syn keyword ncppolicyStatement  ELSEIF elseif Elseif
syn keyword ncppolicyStatement  WHILE while While
syn keyword ncppolicyStatement  DO do Do
syn keyword ncppolicyStatement  FOR for For to TO To next NEXT Next
syn keyword ncppolicyStatement  INCLUSIVE inclusive Inclusive EXCLUSIVE exclusive Exclusive
syn keyword ncppolicyStatement  EXIT exit Exit
syn keyword ncppolicyStatement  PRINT print Print
syn keyword ncppolicyStatement  #IFVER
syn keyword ncppolicyStatement  #ENDVER

syn keyword ncppolicyStatement  CIRCLE circle Circle CLEAR clear Clear
syn keyword ncppolicyStatement  CLOSE close Close CLS cls Cls COLOR color Color
syn keyword ncppolicyStatement  CONST const Const DATA data Data
syn keyword ncppolicyStatement  DECLARE declare Declare DEF def Def
syn keyword ncppolicyStatement  DEFDBL defdbl Defdbl DEFINT defint Defint
syn keyword ncppolicyStatement  DEFLNG deflng Deflng DEFSNG defsng Defsng
syn keyword ncppolicyStatement  DEFSTR defstr Defstr DIM dim Dim
syn keyword ncppolicyStatement  DO do Do
syn keyword ncppolicyStatement  END end End
syn keyword ncppolicyStatement  endif ENDIF
syn keyword ncppolicyStatement  ENVIRON environ Environ ERASE erase Erase
syn keyword ncppolicyStatement  ERROR error Error EXIT exit Exit
syn keyword ncppolicyStatement  FIELD field Field FILES files Files
syn keyword ncppolicyStatement  FOR for For NEXT next Next
syn keyword ncppolicyStatement  FUNCTION function Function GET get Get
syn keyword ncppolicyStatement  GOSUB gosub Gosub GOTO goto Goto
syn keyword ncppolicyStatement  IF if If THEN then Then ELSE else Else
syn keyword ncppolicyStatement  INPUT input Input INPUT# input# Input#
syn keyword ncppolicyStatement  IOCTL ioctl Ioctl KEY key Key
syn keyword ncppolicyStatement  KILL kill Kill LET let Let
syn keyword ncppolicyStatement  LINE line Line LOCATE locate Locate
syn keyword ncppolicyStatement  LOCK lock Lock UNLOCK unlock Unlock
syn keyword ncppolicyStatement  LPRINT lprint Lprint USING using Using
syn keyword ncppolicyStatement  LSET lset Lset MKDIR mkdir Mkdir
syn keyword ncppolicyStatement  NAME name Name ON on On
syn keyword ncppolicyStatement  ERROR error Error OPEN open Open
syn keyword ncppolicyStatement  OPTION option Option BASE base Base
syn keyword ncppolicyStatement  OUT out Out PAINT paint Paint
syn keyword ncppolicyStatement  PALETTE palette Palette PCOPY pcopy Pcopy
syn keyword ncppolicyStatement  PEN pen Pen PLAY play Play
syn keyword ncppolicyStatement  PMAP pmap Pmap POKE poke Poke
syn keyword ncppolicyStatement  REDIM redim Redim RESET reset Reset
syn keyword ncppolicyStatement  RESTORE restore Restore RESUME resume Resume
syn keyword ncppolicyStatement  RETURN return Return RMDIR rmdir Rmdir
syn keyword ncppolicyStatement  RSET rset Rset RUN run Run
syn keyword ncppolicyStatement  SUB sub Sub SWAP swap Swap
syn keyword ncppolicyStatement  SYSTEM system System TIMER timer Timer
syn keyword ncppolicyStatement  TROFF troff Troff TRON tron Tron
syn keyword ncppolicyStatement  WHILE while While WEND wend Wend
syn keyword ncppolicyStatement  INCLUSIVE inclusive EXCLUSIVE exclusive
syn keyword ncppolicyStatement  MID$ mid$ Mid$ TIME$ time$ Time$
syn keyword ncppolicyStatement  to TO and AND or OR

syn keyword ncppolicyFunction       Wait
syn keyword ncppolicyFunction       Len
syn keyword ncppolicyFunction       Left
syn keyword ncppolicyFunction       Right
syn keyword ncppolicyFunction       Mid
syn keyword ncppolicyFunction       InStr
syn keyword ncppolicyFunction       RInStr
syn keyword ncppolicyFunction       SplittStr
syn keyword ncppolicyFunction       SplitStr
syn keyword ncppolicyFunction       LCase
syn keyword ncppolicyFunction       UCase
syn keyword ncppolicyFunction       Int
syn keyword ncppolicyFunction       Str
syn keyword ncppolicyFunction       TimeFormat
syn keyword ncppolicyFunction       GetEnv
syn keyword ncppolicyFunction       IsVersionEqual
syn keyword ncppolicyFunction       IsVersionGreater
syn keyword ncppolicyFunction       IsVersionGreaterOrEqual
syn keyword ncppolicyFunction       GetLocalTimeStr
syn keyword ncppolicyFunction       GetUtcTimeStr
syn keyword ncppolicyFunction       GetSystemTime
syn keyword ncppolicyFunction       SystemTimeToStr
syn keyword ncppolicyFunction       TimeStrAddDays
syn keyword ncppolicyFunction       TimeStrAddSecs
syn keyword ncppolicyFunction       FileExists
syn keyword ncppolicyFunction       GetFileSize
syn keyword ncppolicyFunction       GetFileTime
syn keyword ncppolicyFunction       GetFileVersion
syn keyword ncppolicyFunction       GetFileMd5Hash
syn keyword ncppolicyFunction       GetFileSha1Hash
syn keyword ncppolicyFunction       GetFileSha256Hash
syn keyword ncppolicyFunction       GetFileSha512Hash
syn keyword ncppolicyFunction       CopyFile
syn keyword ncppolicyFunction       DeleteFile
syn keyword ncppolicyFunction       Rename
syn keyword ncppolicyFunction       MkDir
syn keyword ncppolicyFunction       RmDir
syn keyword ncppolicyFunction       Unzip
syn keyword ncppolicyFunction       DownloadFile
syn keyword ncppolicyFunction       RegExistsKey
syn keyword ncppolicyFunction       RegExistsKey64
syn keyword ncppolicyFunction       RegGetValue
syn keyword ncppolicyFunction       RegGetValue64
syn keyword ncppolicyFunction       IsServiceInstalled
syn keyword ncppolicyFunction       IsServiceRunning
syn keyword ncppolicyFunction       IsServiceStopped
syn keyword ncppolicyFunction       HotfixesInstalled
syn keyword ncppolicyFunction       CertGetPolicyOid
syn keyword ncppolicyFunction       Log
syn keyword ncppolicyFunction       MonitorLog
syn keyword ncppolicyFunction       MonitorMessage
syn keyword ncppolicyFunction       StartBrowser
syn keyword ncppolicyFunction       MgmSrvLog
syn keyword ncppolicyFunction       SysLog
syn keyword ncppolicyFunction       EnableAllFwRules
syn keyword ncppolicyFunction       EnableFwRule
syn keyword ncppolicyFunction       Disconnect
syn keyword ncppolicyFunction       ExitAccept
syn keyword ncppolicyFunction       ExitReject
syn keyword ncppolicyFunction       Exec
syn keyword ncppolicyFunction       WmiQuerySimpleInt
syn keyword ncppolicyFunction       WmiQuerySimpleStr
syn keyword ncppolicyFunction       WmiStartQuery
syn keyword ncppolicyFunction       WmiNext
syn keyword ncppolicyFunction       WmiGetValueStr
syn keyword ncppolicyFunction       WmiGetValueInt
syn keyword ncppolicyFunction       WmiGetValueName
syn keyword ncppolicyFunction       WmiGetValueCount
syn keyword ncppolicyFunction       WmiFinishQuery
syn keyword ncppolicyFunction       GetNacValue
syn keyword ncppolicyFunction       SetNacPluginPath

syn keyword ncppolicyLangConst      FALSE TRUE true false

syn keyword ncppolicyConstant       CHECK_INTERVAL RELOAD_INTERVAL
syn keyword ncppolicyConstant       FILTERGROUPNAME SECURITY_LEVEL
syn keyword ncppolicyConstant       LOGLEVEL LOGFILE

syn keyword ncppolicyConstant       POLICYCLIENTVERSION
syn keyword ncppolicyConstant       TRUE
syn keyword ncppolicyConstant       FALSE
syn keyword ncppolicyConstant       HKEY_LOCAL_MACHINE
syn keyword ncppolicyConstant       HKEY_CURRENT_USER
syn keyword ncppolicyConstant       HOSTNAME
syn keyword ncppolicyConstant       COMPUTERNAME
syn keyword ncppolicyConstant       PCSERIALNUMBER
syn keyword ncppolicyConstant       CURRENTTIME
syn keyword ncppolicyConstant       PHONE_IMEI
syn keyword ncppolicyConstant       PHONE_SIM_IMSI
syn keyword ncppolicyConstant       MAC_HW_MODEL
syn keyword ncppolicyConstant       WAS_ACCEPTED
syn keyword ncppolicyConstant       ISFIRSTCHECK
syn keyword ncppolicyConstant       OSVERSION
syn keyword ncppolicyConstant       OSUSERNAME
syn keyword ncppolicyConstant       ISWINDOWS
syn keyword ncppolicyConstant       ISWINCE
syn keyword ncppolicyConstant       ISWINCE_POCKETPC
syn keyword ncppolicyConstant       ISWINCE_SMARTPHONE
syn keyword ncppolicyConstant       ISLINUX
syn keyword ncppolicyConstant       WINDOWSSERVICEPACK
syn keyword ncppolicyConstant       ISWINDOWSNT
syn keyword ncppolicyConstant       ISWINDOWS2000
syn keyword ncppolicyConstant       ISWINDOWSXP
syn keyword ncppolicyConstant       ISWINDOWS2003
syn keyword ncppolicyConstant       ISWINDOWS2008
syn keyword ncppolicyConstant       ISWINDOWS2012
syn keyword ncppolicyConstant       ISWINDOWSVISTA
syn keyword ncppolicyConstant       ISWINDOWS7
syn keyword ncppolicyConstant       ISWINDOWS8
syn keyword ncppolicyConstant       ISWINDOWS81
syn keyword ncppolicyConstant       IS64BIT
syn keyword ncppolicyConstant       ISMACOSX
syn keyword ncppolicyConstant       LINUX_DIST
syn keyword ncppolicyConstant       LINUX_DIST_VERSION
syn keyword ncppolicyConstant       WINDIR
syn keyword ncppolicyConstant       WINSYSDIR
syn keyword ncppolicyConstant       PROGRAMDIR
syn keyword ncppolicyConstant       PROGRAMDIR64
syn keyword ncppolicyConstant       SECURECLIENT_INSTALLDIR
syn keyword ncppolicyConstant       SECURECLIENT_VERSION
syn keyword ncppolicyConstant       SECURECLIENT_SPNR
syn keyword ncppolicyConstant       SECURECLIENT_BUILDNR
syn keyword ncppolicyConstant       VPNUSERNAME
syn keyword ncppolicyConstant       SECURECLIENT_CFGVERSION
syn keyword ncppolicyConstant       SECURECLIENT_ISLINKFWACTIV
syn keyword ncppolicyConstant       SECURECLIENT_ISFWACTIV
syn keyword ncppolicyConstant       SECURECLIENT_LINKTYPE
syn keyword ncppolicyConstant       VIRUSSW_DISPLAYNAME
syn keyword ncppolicyConstant       VIRUSSW_UPTODATE
syn keyword ncppolicyConstant       VIRUSSW_ONACCESSSCAN
syn keyword ncppolicyConstant       VPN_CERT_SUBJECT_DN
syn keyword ncppolicyConstant       VPN_CERT_SUBJECT_CN
syn keyword ncppolicyConstant       VPN_CERT_SUBJECT_EMAIL
syn keyword ncppolicyConstant       VPN_CERT_SUBJECT_OU
syn keyword ncppolicyConstant       VPN_CERT_SUBJECT_ORG
syn keyword ncppolicyConstant       VPN_CERT_ISSUER_DN
syn keyword ncppolicyConstant       VPN_CERT_ISSUER_CN
syn keyword ncppolicyConstant       VPN_CERT_ISSUER_EMAIL
syn keyword ncppolicyConstant       VPN_CERT_ISSUER_OU
syn keyword ncppolicyConstant       VPN_CERT_ISSUER_ORG
syn keyword ncppolicyConstant       VPN_CERT_SERIALNR
syn keyword ncppolicyConstant       VPN_CERT_SUBALT_UPN
syn keyword ncppolicyConstant       VPN_CERT_SUBALT_EMAIL
syn keyword ncppolicyConstant       HW_CERT_SUBJECT_DN
syn keyword ncppolicyConstant       HW_CERT_SUBJECT_CN
syn keyword ncppolicyConstant       HW_CERT_SUBJECT_EMAIL
syn keyword ncppolicyConstant       HW_CERT_SUBJECT_OU
syn keyword ncppolicyConstant       HW_CERT_SUBJECT_ORG
syn keyword ncppolicyConstant       HW_CERT_ISSUER_DN
syn keyword ncppolicyConstant       HW_CERT_ISSUER_CN
syn keyword ncppolicyConstant       HW_CERT_ISSUER_EMAIL
syn keyword ncppolicyConstant       HW_CERT_ISSUER_OU
syn keyword ncppolicyConstant       HW_CERT_ISSUER_ORG
syn keyword ncppolicyConstant       HW_CERT_SERIALNR
syn keyword ncppolicyConstant       HW_CERT_SUBALT_UPN
syn keyword ncppolicyConstant       HW_CERT_SUBALT_EMAIL
syn keyword ncppolicyConstant       HBANTIVIR_VDFVER
syn keyword ncppolicyConstant       HBANTIVIR_SCANVER
syn keyword ncppolicyConstant       HBANTIVIR_ENGINEVER
syn keyword ncppolicyConstant       HBANTIVIR_PRODUCTVER
syn keyword ncppolicyConstant       HBANTIVIR_LASTUPDATE
syn keyword ncppolicyConstant       MCAFEE_VIRUSSCAN_VDFVER
syn keyword ncppolicyConstant       MCAFEE_VIRUSSCAN_PRODVER
syn keyword ncppolicyConstant       MCAFEE_VIRUSSCAN_ENGINEVER
syn keyword ncppolicyConstant       WSC_FIREWALL_STATE
syn keyword ncppolicyConstant       WSC_AUTOUPDATE_STATE
syn keyword ncppolicyConstant       WSC_ANTIVIRUS_STATE
syn keyword ncppolicyConstant       WSC_ANTISPYWARE_STATE
syn keyword ncppolicyConstant       WSC_INTERNET_SETTINGS
syn keyword ncppolicyConstant       WSC_USER_ACCOUNT_CONTROL
syn keyword ncppolicyConstant       WSC_SERVICE
syn keyword ncppolicyConstant       PROGRAMMDIR
syn keyword ncppolicyConstant       WINDOWSUSERNAME

"integer number, or floating point number without a dot.
syn match  ncppolicyNumber      "\<\d\+\>"
"floating point number, with dot
syn match  ncppolicyNumber      "\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match  ncppolicyNumber      "\.\d\+\>"

" String and Character contstants
syn match   ncppolicySpecial contained "\\\d\d\d\|\\."
syn region  ncppolicyString       start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=ncppolicySpecial

syn region  ncppolicyComment    start="REM" end="$" contains=ncppolicyTodo
syn region  ncppolicyComment    start="^[ \t]*'" end="$" contains=ncppolicyTodo
syn region  ncppolicyLineNumber start="^\d" end="\s"
syn match   ncppolicyTypeSpecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
" Used with OPEN statement
syn match   ncppolicyFilenumber  "#\d\+"
"syn sync ccomment ncppolicyComment
" syn match   ncppolicyMathsOperator "[<>+\*^/\\=-]"
syn match   ncppolicyMathsOperator   "-\|=\|[:<>+\*^/\\]\|AND\|OR"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ncppolicy_syntax_inits")
  command -nargs=+ HiLink hi def link <args>

  HiLink ncppolicyLabel     Label
  HiLink ncppolicyConditional   Conditional
  HiLink ncppolicyRepeat    Repeat
  HiLink ncppolicyLineNumber    Comment
  HiLink ncppolicyNumber    Number
  HiLink ncppolicyError     Error
  HiLink ncppolicyStatement Statement
  HiLink ncppolicyString    String
  HiLink ncppolicyComment   Comment
  HiLink ncppolicySpecial   Special
  HiLink ncppolicyTodo      Todo
  HiLink ncppolicyFunction  Function
  HiLink ncppolicyConstant  Identifier
  HiLink ncppolicyLangConst     Constant
  HiLink ncppolicyTypeSpecifier Type
  HiLink ncppolicyFilenumber ncppolicyTypeSpecifier
  "hi ncppolicyMathsOperator term=bold cterm=bold gui=bold

  delcommand HiLink
endif

let b:current_syntax = "ncppolicy"

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=4 sw=4 et:
