" Vim syntax file
" Language: spd
" Maintainer:   Adrian Schlegel <adrian@liip.ch>
" Last Change:  2014 April 29

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syntax match host "^.\{-1,}\t" nextgroup=username
syntax match username ".\{-1,}\t" nextgroup=password contained
syntax match password ".\{-1,}\t" nextgroup=description contained
syntax match description ".\{-1,}\t" nextgroup=product contained
syntax region product start="\S" end="$" skipwhite contained keepend

hi def link host Label
hi def link username Type
hi def link password String
hi def link description PreProc
" hi def link product Comment

let b:current_syntax = "spd"
