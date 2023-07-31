syntax keyword slothTodos TODO FIXME NOTE XXX

syntax keyword slothKeywords 
    \ while 
    \ fn 
    \ foreign 
    \ fn 
    \ var 
    \ if 
    \ else 
    \ return 
    \ as 
    \ in

syntax match slothNumber "\v<\d+>"
syntax match slothNumber "\v<\d+\.\d+>"

syntax region slothString start=/"/ skip=/\\/ end=/"/ oneline contains=slothInterpolatedWrapper
syntax region slothInterpolatedWrapper start="\v\\\(\s*" end="\v\s*\)" contained containedin=swiftString contains=swiftInterpolatedString
syntax match slothInterpolatedString "\v\w+(\(\))?" contained containedin=swiftInterpolatedWrapper

syntax keyword slothType Int String Float Void Bool
syntax match slothOperator '[+ \- \* \/ <= == >= &&]'
syntax match slothparen "("
syntax match slothFunction "\w\+\s*(" contains=paren
syntax match slothComment "#.*"
syntax match slothBool "true"
syntax match slothBool "false"


highlight default link slothTodos Todo
highlight default link slothComment Comment
highlight default link slothString String
highlight default link slothInterpolatedWrapper Delimiter
highlight default link slothNumber Number
highlight default link slothBool Boolean
highlight default link slothOperator Operator
highlight default link slothKeywords Keyword
highlight default link slothType Type
highlight default link slothFunction Function
