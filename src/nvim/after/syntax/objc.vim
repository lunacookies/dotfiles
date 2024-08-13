syntax match objcMethodName '\v<_*[a-zA-Z][a-zA-Z0-9_]*>(:)@=' containedin=objcMethodCall,objcColon
syntax match objcMethodName '\v(\s+)@<=<_*[a-zA-Z][a-zA-Z0-9_]*>(])@=' containedin=objcMethodCall,objcColon
syntax match objcMethodName '\v([-+]\s*\([a-zA-Z0-9_<>* ]+\))@<=<_*[a-zA-Z][a-zA-Z0-9_]*>'
syntax match objcClassName '\v<_*[A-Z][a-zA-Z0-9_]*>' containedin=objcMethodCall,objcColon,objcProtocolList
syntax match objcClassName '\v<_*[A-Z][a-zA-Z0-9_]*>' containedin=objcMethodCall,objcColon,objcProtocolList
syntax match objcFunctionName '\v_*[a-zA-Z][a-zA-Z0-9_]*(\()@='

highlight default link objcMethodName Function
highlight default link objcClassName Type
highlight default link objcFunctionName Function

" For some reason the builtin syntax/objc.vim highlights these as operators
" by default.
highlight link objcObjDef Keyword
highlight link objcProtocol Keyword
highlight link objcProperty Keyword
highlight link objcIvarScope Keyword
highlight link objcInternalRep Keyword
highlight link objcException Keyword
highlight link objcThread Keyword
highlight link objcPool Keyword
highlight link objcModuleImport Keyword

" Replace buggy @property(getter=foo, setter=bar) highlighting that attempts to
" highlight the actual getter & setter names themselves with something simpler
" that just highlights the literal `getter` and `setter` keywords.
syntax clear objcDeclPropAccessorName
syntax keyword objcDeclPropAccessorName getter setter contained

" By default these are highlighted as constants, which seems incorrect.
highlight link objcDeclPropAccessorName Keyword
highlight link objcDeclPropAccessorType Keyword
highlight link objcDeclPropAssignSemantics Keyword
highlight link objcDeclPropAtomicity Keyword
highlight link objcDeclPropARC Keyword
highlight link objcDeclPropNullable Keyword
highlight link objcDeclPropNonnull Keyword
highlight link objcDeclPropNullUnspecified Keyword
highlight link objcDeclProcNullResettable Keyword
