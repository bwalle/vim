" Vim color scheme
"
" Name:         soruby.vim
" Maintainer:   Mitko Kostov | mitko.kostov@gmail.com
" Last Change:  04 Mar 2009
" License:      LGPL
" Version:      0.1

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "SORuby"

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

highlight Normal                    guifg=#E6E1DC guibg=#111111 
highlight Cursor                    guifg=#FFFFFF ctermfg=0 guibg=#FFFFFF ctermbg=15	
highlight CursorLine                guibg=#000000 ctermbg=233 cterm=NONE

highlight Comment                   guifg=#868686 ctermfg=180
highlight Constant                  guifg=#4596ff ctermfg=73
highlight Define                    guifg=#ff6458 ctermfg=173
highlight Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
highlight Function                  guifg=#9ec0ff ctermfg=221 gui=NONE cterm=NONE
highlight Identifier                guifg=#fffc00 ctermfg=73 gui=NONE cterm=NONE
highlight Include                   guifg=#ff6458 ctermfg=173 gui=NONE cterm=NONE
highlight PreCondit                 guifg=#fffc00 ctermfg=173 gui=NONE cterm=NONE
highlight Keyword                   guifg=#00ffb4 ctermfg=173 cterm=NONE
highlight LineNr                    guifg=#9E9E9E ctermfg=159 guibg=#171717
highlight Number                    guifg=#A5C261 ctermfg=107
highlight PreProc                   guifg=#CC7833 ctermfg=103
highlight Search                    guifg=NONE ctermfg=NONE guibg=#2b2b2b ctermbg=235 gui=italic cterm=underline
highlight Statement                 guifg=#ff6458 ctermfg=173 gui=NONE cterm=NONE
highlight String                    guifg=#90ff5e ctermfg=107
highlight Title                     guifg=#CC7833 ctermfg=15
highlight Type                      guifg=#DA4939 ctermfg=167 gui=NONE cterm=NONE
highlight Visual                    guibg=#5A647E ctermbg=60

highlight DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=71
highlight DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
highlight Special                   guifg=#DA4939 ctermfg=167 

highlight pythonBuiltin             guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
highlight rubyBlockParameter        guifg=#7bcfff ctermfg=15
highlight rubyClass                 guifg=#ff6458 ctermfg=15
highlight rubyConstant              guifg=#72c6ff ctermfg=167
highlight rubyInstanceVariable      guifg=#4596ff ctermfg=189
highlight rubyInterpolation         guifg=#d990de ctermfg=107
highlight rubyLocalVariableOrMethod guifg=#d990de ctermfg=189
highlight rubyPredefinedConstant    guifg=#4596ff ctermfg=167
highlight rubyPseudoVariable        guifg=#4596ff ctermfg=221
highlight rubyStringDelimiter       guifg=#99cf50 ctermfg=143

highlight xmlTag                    guifg=#E8BF6A ctermfg=179
highlight xmlTagName                guifg=#E8BF6A ctermfg=179
highlight xmlEndTag                 guifg=#E8BF6A ctermfg=179

highlight mailSubject               guifg=#A5C261 ctermfg=107
highlight mailHeaderKey             guifg=#FFC66D ctermfg=221
highlight mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

highlight SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
highlight SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight MatchParen                guifg=#519F50 ctermfg=15 guibg=#005f5f ctermbg=23
