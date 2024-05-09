syntax match objcMethodName '\v<_*[a-zA-Z][a-zA-Z0-9_]*>(:)@=' containedin=objcMethodCall,objcColon
syntax match objcMethodName '\v(\s+)@<=<_*[a-zA-Z][a-zA-Z0-9_]*>(])@=' containedin=objcMethodCall,objcColon
syntax match objcMethodName '\v([-+]\s*\([a-zA-Z0-9_<>* ]+\))@<=<_*[a-zA-Z][a-zA-Z0-9_]*>'
syntax match objcClassName '\v<_*[A-Z][a-zA-Z0-9_]*>' containedin=objcMethodCall,objcColon,objcProtocolList
syntax match objcClassName '\v<_*[A-Z][a-zA-Z0-9_]*>' containedin=objcMethodCall,objcColon,objcProtocolList
syntax match objcFunctionName '\v_*[a-zA-Z][a-zA-Z0-9_]*(\()@='

highlight default link objcMethodName Function
highlight default link objcClassName Type
highlight default link objcFunctionName Function
