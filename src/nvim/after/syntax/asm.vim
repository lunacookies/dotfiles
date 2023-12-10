syntax clear

syntax match Number '\v(#|<)-?(0x[0-9a-fA-F]+|[0-9]+)'
syntax match Function '\v[a-zA-Z_.][a-zA-Z0-9_.]*'
syntax match Constant '\v([wxbhsdqv][0-9]+|sp|fp|lr)(.[0-9]+[a-z])?'
syntax match PreProc '\v\.(global|align|ascii|macro|endmacro)'
syntax match PreProc '\v#[a-z]+'
syntax match Macro '\v<[A-Z][A-Z0-9_]*>'
syntax match Keyword '\v^\s+[a-zA-Z][a-zA-Z0-9.]*'
syntax region String  start=+"+ skip=+\\"+ end=+"+
syntax match Comment '\v(;|//).*$'
