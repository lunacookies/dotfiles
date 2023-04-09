if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "minic"

syntax keyword minicKeyword func return var set if else while
syntax match minicFunction '\v[a-zA-Z_][a-zA-Z0-9_]*(\()@='
syntax match minicFunction '\v<(func\s+)@<=[a-zA-Z_][a-zA-Z0-9_]*'
syntax match minicNumber '\v<[0-9]+>'
syntax match minicOperator '[+\-*/=><|&!]'
syntax keyword minicType i8 i16 i32 i64 isize u8 u16 u32 u64 usize

highlight default link minicKeyword Keyword
highlight default link minicFunction Function
highlight default link minicNumber Number
highlight default link minicOperator Operator
highlight default link minicType Type
