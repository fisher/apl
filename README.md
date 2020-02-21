# Playing around APL

# The charset

⍝ ← +-×÷*⍟⌹○!? |⌈⌊⊥⊤⊣⊢ =≠≤<>≥≡≢ ∨∧⍱⍱ ↑↓⊂⊃⎕⍋⍒ ⍳⍷∪∩∊~ /\⌿⍀,⍪⍴⌽⊖⍉ ¨⍨⍣.∘⍤ ⍞⎕⍠⌸⍎⍕ ⋄→⍵⍺∇& ¯⍬

# The keyboard

## arythmetic and algebraic functions

| Key   | Sym |   Monadic       |   Dyadic                 | Notes    
|:------|:---:|:----------------|:-------------------------|:---------
| C-]   |  ←  |   ---           | assign                   |
|       |  +  |   Identity      | add                      |
|       |  -  |   Negate        | substract                |
| C-=   |  ×  |   Sign of       | multiplication           |
| C-\[  |  ÷  | Reciprocal 1/x  | division                 |
| C-S-\[| ⌹  | matrix inverse  | matrix division          |
|  C-i  |  ⍳   | Index generator | Index of                 |
|       |  ?  | Random roll     |  Random deal             |
|  S-8  |  *  |  Exponential    | Power                    |
| C-S-8 |  ⍟ |  Natural log    | given base log           |
|  C-o  |  ○  | Pi times        | Circle (rad!)            |
|       |  !  | Factorial       | Number of Combinations   |
|       | \|  | Absolute value  | Residue (div remainder)  |
| C-s   |  ⌈  | ceiling         | maximum                  |
| C-d   |  ⌊  | floor           | minimum                  |

## unsorted yet

| Key   | Sym | Name/Function                      |
|:------|:---:|:-----------------------------------|
| C-b   |  ⊥ | decode                             |
| C-n   |  ⊤ | encode                             |
| C-S-/ |  ⊣ | left                               |
| C-/   |  ⊢ | right                              |

## Manipulative
| Key | Sym |  Monadic  | Dyadic |
|:----|:---:|:---------:|:------:|
| C-r |  ⍴  |  Shape    | Reshape
|     |  ,  |  Ravel    | Concatenate
|C-S-5|  ⌽  | Reverse   | Rotate
|C-S-6|  ⍉  | Transpose | Transpose
| C-Y |  ↑  |    ---    | Take
| C-U |  ↓  |    ---    | Drop
|     |  /  |    ---    | Compress
|     |  \  |    ---    | Expand

## Sorting and coding

| Key | Sym |  Monadic  | Dyadic |
|:----|:---:|:---------:|:------:|
|C-S-4|  ⍋  | GRADE UP  |  ---
|C-S-3|  ⍒  | GRADE DOWN|  ---
| C-n |  ⊤  |    ---    | ENCODE
| C-b |  ⊥  |    ---    | DECODE

## Comparative (dyadic only)
| Key | Sym | Function                 | Returns
|:----|:---:|:-------------------------|------------
|     |  <  | Less than                | Vector of size R
| C-4 |  ≤  | Less than or equal to    | Vector of size R
|     |  =  | Equal to                 | Vector of size R
| C-6 |  ≥  | Greater than or equal to | Vector of size R
|     |  >  | Greater than             | Vector of size R
| C-8 |  ≠  | Not equal to             | Vector of size R
| C-e |  ∊  | Is an element of         | Vector of size Left

## Logical

| Key   | Sym | Name/Function                     |
|:------|:---:|:-----------------------------------|
|       |  ~  | Not (monadic only)
| C-9   |  ∨  | Or  (dyadic only)
| C-0   |  ^  | And (dyadic only)
| C-S-9 |  ⍱  | Nor (dyadic only)
| C-S-0 |  ⍲  | Nand (dyadic only)

## interactive/other

| Key   | Sym | Name/Function                     |
|:------|:--:|:-----------------------------------|
| C-l   | ⎕ | Quad
| C-S-] | ⍞ | Quote-quad
| C-\   | ⋄  | Statement separator
| C-S-' | ⍕ | Format
| C-S-, | ⍝ | Comment
| C-S-` | ⍎ | Execute
| C-S-[ | ⌹ | Domino (matrix inverse / matrix divide)

# Five APL operators:

| Name          | form |
|:--------------|:----:|  
| Reduction     | f/, f ∊ {+  -  ×  ÷  ⌈  ⌊  \|  *  ¤  ○  !  <  ≤  =  ≥  >  ≠  ∨  ∧  ⍱  ⍲}   |
| Scan          | f\, f ∊ {+  -  ×  ÷  ⌈  ⌊  \|  *  ¤  ○  !  <  ≤  =  ≥  >  ≠  ∨  ^  ⍱  ⍲}   |
| Outer product | X∘.fY, f ∊ {+ - × ÷ ⌊ ⌈ \| * ¤ ○ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} |
| Inner product | Xf.gY, (f,g) ∊ {+ - × ÷ ⌊ ⌈ \| * ¤ ∘ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} |
| Axis          | ? |
