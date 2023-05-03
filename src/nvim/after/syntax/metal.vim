" based on https://github.com/stewartimel/Metal-Vim-Syntax-Highlighting

if exists('b:current_syntax')
    finish
endif

runtime! syntax/cpp.vim
let b:current_syntax = 'metal'

syntax keyword metalKeyword vertex fragment constant device buffer devicethreadgroup patch
syntax keyword metalScalarType ptrdiff_t half uchar uint
syntax match metalVectorType '\v<(packed_)?(bool|char|uchar|short|ushort|half|int|uint|float)[2-4]'
syntax match metalMatrixType '\v(half|float)[2-4]x[2-4]'
syntax match metalAtomicType '\vatomic_(int|uint|bool)'
syntax match metalAtomicType '\vatomic\<(int|uint|bool)\>'
syntax region metalAttribute start='\[\[' end='\]\]'

highlight default link metalKeyword Keyword
highlight default link metalScalarType Type
highlight default link metalVectorType Type
highlight default link metalMatrixType Type
highlight default link metalAtomicType Type
highlight default link metalAttribute PreProc
