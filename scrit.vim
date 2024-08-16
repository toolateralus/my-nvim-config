" Define the syntax highlighting rules
syntax match scritComment "//.*$"
syntax match scritComment "//.*$"
syntax region scritComment start="/\*" end="\*/" contains=@Comment

syntax match scritFunction "\<[a-zA-Z_][a-zA-Z0-9_]*\>\ze\s*(\([^)]*\))"

syntax match scritBoolean "\<\(true\|false\)\>" 
syntax match scritNullUndefined "\<\(undefined\|null\)\>" 

syntax match scritOperator "=\\|+=\\|-=\\|/=\\|*=\\|??="
syntax match scritArithmetic "+\\|-\\|*\\|/\\|^" 
syntax match scritComparison "<\\|>\\|<=\\|>=" 
syntax match scritLogical "||&\\|!" 
syntax match scritComma "," 
syntax match scritDot "\\." 

syntax match scritControlFlow "\<\(mut\|const\|for\|if\|else\|continue\|break\|match\|default\|_\|delete\|global\)\>" 

syntax match scritImport "\<\(struct\|let\|import\|from\|using\)\>" 

syntax match scritFunctionKeyword "\<\(func\|return\)\>" 
syntax match scritTypeof "\<type\>" 
syntax match scritThis "\<this\>" 

syntax match scritFloat "\<[0-9]+\.[0-9]*[fF]?\>" 
syntax match scritInteger "\<[0-9]+\>" 

syntax match scritString '".\{-}"'

syntax match scritPunctuation "[(){}\\[\\]]"

" Match CamelCase words
syntax match scritCamelCase "\<[A-Z][a-zA-Z0-9]*\>"

" Match built-in types
syntax match scritBuiltinType "\<\(string\|int\|float\|bool\|array\object\)\>"

syntax match scritError ";" 
highlight link scritError Error

syntax match scritIdentifier "\<_\?[a-z][a-zA-Z0-9_]*\>\s*\ze[:=,]"

highlight scritCustomIdentifier guifg=#DDA0DD ctermfg=13

highlight link scritIdentifier scritCustomIdentifier

" Link syntax groups to highlight groups
highlight link scritComment Comment
" Literals
highlight link scritString String
highlight link scritBoolean Boolean

highlight link scritInteger Number
highlight link scritFloat Number

" Declarations
highlight link scritFunction Function

" Constants 
highlight link scritNullUndefined Constant

" Operators
highlight link scritOperator Operator
highlight link scritArithmetic Operator
highlight link scritComparison Operator
highlight link scritLogical Operator
highlight link scritComma Operator
highlight link scritDot Operator
highlight link scritPunctuation Special

" Keywords
highlight link scritControlFlow Keyword
highlight link scritTypeof Keyword
highlight link scritImport Keyword
highlight link scritFunctionKeyword Type
highlight link scritThis Special

" Types
highlight link scritCamelCase Type
highlight link scritBuiltinType Type

" Set the file type
set filetype=scrit