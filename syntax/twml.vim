" Vim syntax file
" Language: TWML
" Maintainer: DISTREAT
" Latest Revision: 2023/12/06

if exists("b:current_syntax")
  finish
endif

syn match twmlElement '^\s*\\\w*' nextgroup=twmlClassSeperator
syn match twmlClassSeperator '\.' contained nextgroup=twmlClass
syn match twmlClass '.\{-}\ze\($\|\.\|\s\)' contained nextgroup=twmlClassSeperator,twmlAttribute
syn region twmlAttribute start='{' end='}' contains=twmlAttributeKey,twmlAttributeValue
syn match twmlAttributeKey '\w*\ze='
syn match twmlAttributeValue '".\{-}"'
syn match twmlDeclaration '^\s*@.*\s'
syn match twmlComment '^\s*\\\\.*$' contains=twmlTodo
syn keyword twmlTodo TODO FIXME NOTE

let b:current_syntax = "twml"

hi def link twmlElement Keyword
hi def link twmlClass Identifier
hi def link twmlAttributeKey Identifier
hi def link twmlAttributeValue String
hi def link twmlDeclaration Define
hi def link twmlComment Comment
hi def link twmlTodo Todo

