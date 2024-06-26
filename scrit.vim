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

syntax match scritControlFlow "\<\(for\|if\|else\|continue\|break\|match\|default\|_\)\>" 

syntax match scritImport "\<\(import\|from\|using\)\>" 

syntax match scritFunctionKeyword "\<\(func\|return\)\>" 
syntax match scritTypeof "\<typeof\>" 
syntax match scritThis "\<this\>" 

syntax match scritInteger "\<[0-9]+\>" 
syntax match scritFloat "\<[0-9]+\.[0-9]*[fF]?\>" 

syntax match scritString '".\{-}"'

syntax match scritPunctuation "[(){}\\[\\]]"

" Link syntax groups to highlight groups
highlight link scritComment Comment
" Literals
highlight link scritString String
highlight link scritBoolean Boolean
highlight link scritInteger Number
highlight link scritFloat Float

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



" Set the file type
set filetype=scrit