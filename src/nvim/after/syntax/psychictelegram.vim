if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "psychictelegram"

syntax keyword psyKeyword fn struct let if else for return break
syntax keyword psyType int char
syntax match psyIdentifier '\v[a-zA-Z_][a-zA-Z0-9_]*'
syntax match psyFunction '\v[a-zA-Z_][a-zA-Z0-9_]*(\()@='
syntax region psyString start='"' end='"' skip='\\"' oneline
syntax match psyString '\\.*'
syntax region psyCharacter start="'" end="'" skip="\\'" oneline
syntax match psyNumber '\v[0-9]+'
syntax match psyComment '#.*'
syntax match psyOperator '[+\-*/=><|&.!]'
syntax match psyConstant '\v[A-Z_][A-Z0-9_]*'

highlight default link psyKeyword Keyword
highlight default link psyType Type
highlight default link psyIdentifier Identifier
highlight default link psyFunction Function
highlight default link psyString String
highlight default link psyNumber Number
highlight default link psyCharacter Character
highlight default link psyComment Comment
highlight default link psyOperator Operator
highlight default link psyConstant Constant
