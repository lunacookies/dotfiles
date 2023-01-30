syntax clear

syntax match Number '\v#?(0x)?-?[0-9A-Fa-f]+'
syntax match Constant '\v[a-zA-Z_.][a-zA-Z0-9_.]*'
syntax match Identifier '\v([wxbhsdqv][0-9]+|sp|fp|lr)'
syntax match PreProc '\v\.(global|align|ascii)'
syntax match Keyword '\v^\s+[a-zA-Z][a-zA-Z0-9.]*'
syntax region String  start=+"+ skip=+\\"+ end=+"+
syntax match Comment '\v;.*$'
