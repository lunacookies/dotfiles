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
highlight! default link objcObjDef Keyword
highlight! default link objcProtocol Keyword
highlight! default link objcProperty Keyword
highlight! default link objcIvarScope Keyword
highlight! default link objcInternalRep Keyword
highlight! default link objcException Keyword
highlight! default link objcThread Keyword
highlight! default link objcPool Keyword
highlight! default link objcModuleImport Keyword

" Replace buggy @property(getter=foo, setter=bar) highlighting that attempts to
" highlight the actual getter & setter names themselves with something simpler
" that just highlights the literal `getter` and `setter` keywords.
syntax clear objcDeclPropAccessorName
syntax keyword objcDeclPropAccessorName getter setter contained

" By default these are highlighted as constants, which seems incorrect.
highlight! default link objcDeclPropAccessorName Keyword
highlight! default link objcDeclPropAccessorType Keyword
highlight! default link objcDeclPropAssignSemantics Keyword
highlight! default link objcDeclPropAtomicity Keyword
highlight! default link objcDeclPropARC Keyword
highlight! default link objcDeclPropNullable Keyword
highlight! default link objcDeclPropNonnull Keyword
highlight! default link objcDeclPropNullUnspecified Keyword
highlight! default link objcDeclProcNullResettable Keyword
