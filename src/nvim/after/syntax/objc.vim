syntax match objcMethodName '\v<_*[a-zA-Z][a-zA-Z0-9_]+>(:)@=' containedin=objcMethodCall
syntax match objcMethodName '\v(\s+)@<=<_*[a-zA-Z][a-zA-Z0-9_]*>(])@=' containedin=objcMethodCall
syntax match objcMethodName '\v(\))@<=<_*[a-zA-Z][a-zA-Z0-9_]*>'
syntax match objcClassName '\v<_*[A-Z][a-zA-Z0-9_]*>' containedin=objcMethodCall
syntax match objcClassName '\v<_*[A-Z][a-zA-Z0-9_]*>' containedin=objcMethodCall

highlight default link objcMethodName Function
highlight default link objcClassName Type
