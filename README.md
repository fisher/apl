# Playing around APL

# The charset

⍝ ← +-×÷*⍟⌹○!? |⌈⌊⊥⊤⊣⊢ =≠≤<>≥≡≢ ∨∧⍱⍱ ↑↓⊂⊃⎕⍋⍒ ⍳⍷∪∩∊~ /\⌿⍀,⍪⍴⌽⊖⍉ ¨⍨⍣.∘⍤ ⍞⎕⍠⌸⍎⍕ ⋄→⍵⍺∇& ¯⍬

# The keyboard

## arythmetics

| Key   | Sym | Name/Function                     |
|:------|:---:|:----------------------------------|
| C-]   |  ←  | assign                            |
|       | + - |  add, substract                   |
| C-=   |  ×  | multiplication                    |
| C-[   |  ÷  | 1/x / division                    |
|       |  *  |   exponential / power             |
| C-S-8 | ⍟  | natural / specific base logarythm |
| C-S-[ | ⌹  | matrix inverse / division         |
| C-o   |  ○  | pi / sin / cos / tan              |


## unsorted yet

| Key   | Sym | Name/Function                      |
|:------|:---:|:-----------------------------------|
|       | \|  | abs / residue (division remainder) |
| C-s   |  ⌈  | ceiling / maximum                  |
| C-d   |  ⌊  | floor / minimum                    |
| C-b   |  ⊥ | decode                             |
| C-n   |  ⊤ | encode                             |
| C-S-/ |  ⊣ | left                               |
| C-/   |  ⊢ | right                              |

## Algebraic

| Key   | Sym |   Monadic       |   Dyadic          |
|:------|:---:|:----------------|:------------------|
|  C-i  |  ⍳   | Index generator | Index of
|       |  ?  | Random roll     |  Random deal
|  S-8  |  *  |  Exponential    | Power
| C-S-8 |  ⍟ |  Natural log    | given base log
|  C-o  |  ○  | Pi times        | Circle (rad!)
|       |  !  | Factorial       | Number of Combinations

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
