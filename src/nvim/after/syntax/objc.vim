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
