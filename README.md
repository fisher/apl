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

| Key   | Sym | Monadic       | Dyadic                | Notes
|:------|:---:|:--------------|:----------------------|:-----------
| C-S-/ |  ⊣  | Same          | left arg              |
| C-/   |  ⊢  | Same          | right arg             |
| C-M-1 |  ≡  | Depth of      | Matches
| C-M-\ |  ≢  |               | Not match
| C-z   |  ⊂  | Enclose       | Partition
| C-x   |  ⊃  | Disclose      | Pick
| C-S-l |  ⌷  |               | Index
| C-M-5 |  ⍷   |               | Find
| C-v   |  ∪  | Unique        | Union
| C-c   |  ∩  |               | Intersection


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

| Key   | Sym | Monadic  | Dyadic                    |
|:------|:---:|:---------|:--------------------------|
|       |  ~  | Not      | Without
| C-9   |  ∨  | ---      | Or
| C-0   |  ^  | ---      | And
| C-S-9 |  ⍱  | ---      | Nor
| C-S-0 |  ⍲  | ---      | Nand

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

| Name          | form    | Notes
|:--------------|:-------:|----------------
| Reduction     | f/,    f ∊ {+ - × ÷ ⌈ ⌊ \| * ¤ ○ ! < ≤ = ≥ > ≠ ∨ ∧ ⍱ ⍲} | foldr List -> Scalar
| Scan          | f\,    f ∊ {+ - × ÷ ⌈ ⌊ \| * ¤ ○ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} | foldl List -> List (keeping accumulator)
| Outer product | X∘.fY, f ∊ {+ - × ÷ ⌊ ⌈ \| * ¤ ○ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} |
| Inner product | Xf.gY, (f,g) ∊ {+ - × ÷ ⌊ ⌈ \| * ¤ ∘ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} |
| Axis          | ? |
