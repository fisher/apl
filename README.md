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
| C-g   |  ∇  |               |                        | named 'del'; self-reference inside a lambda


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
| Scan          | f\\,    f ∊ {+ - × ÷ ⌈ ⌊ \| * ¤ ○ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} | foldl List -> List (keeping accumulator)
| Outer product | X∘.fY, f ∊ {+ - × ÷ ⌊ ⌈ \| * ¤ ○ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} |
| Inner product | Xf.gY, (f,g) ∊ {+ - × ÷ ⌊ ⌈ \| * ¤ ∘ ! < ≤ = ≥ > ≠ ∨ ^ ⍱ ⍲} |
| Axis          | ? |

# Goodies

| Pattern | Meaning              | Notes
|:-------:|:---------------------|:---------------
| ⎕WA    | Workspace available  |
| ⎕TS    | Timestamp            |
| ⎕IO    | Index Origin         | ⎕IO ← 0 ⍝ to start indexing from 0 (default 1)
| ⎕PP    | Print digits         | ⎕PP ← 8 ⍝ to use 8 significant digits (default 18)
| ⎕PW    | Print width          |
| ⎕NL 2  | returns matrix of defined variables
| ⎕NL 3  | returns matrix of defined functions
| ⎕NC    | tells if Rarg is already defined in the current ws (retval 0 if not defined, 2 when variable, 3 function)
| ⎕LX    | can contain a single character for execution after the ws has been loaded
| ⎕EX 'EXAMPLE' | erases the object called EXAMPLE

# Commands

| Command | Meaning
|:--------|:-------------
| )WSID   | Workspace Id
| )FNS    | defined Functions in the current Workspace
| )VARS   | defined Variables in the workspace
| )CLEAR  | clear Workspace
| )ERASE  | erase defined function or variable (Rarg)
| )LIB    | shows workspaces stored on the disc
| )SAVE   | saves an exact copy of the current workspace onto the disc
| )LOAD   | loads into the active workspace an exact copy of a previously )SAVEd ws
| )DROP   | deletes a specified previously saved workspace from the disc
| )COPY   | copies specific functions from specified ws on disc to the current ws
| )PCOPY  | the same as )COPY but don't overload names which are already defined in the current ws
| )OFF    | logoff (losing workspace)
| )CONTINUE | logoff with autosave, ws is saved as CONTINUE

