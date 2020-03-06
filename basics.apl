⍝ ←+-×÷*⍟⌹○!? |⌈⌊⊥⊤⊣⊢ =≠≤<>≥≡≢ ∨∧⍱⍱ ↑↓⊂⊃⎕⍋⍒ ⍳⍷∪∩∊~ /\⌿⍀,⍪⍴⌽⊖⍉ ¨⍨⍣.∘⍤ ⍞⎕⍠⌸⍎⍕ ⋄→⍵⍺∇& ¯⍬

flipDiagonal←{(⍴⍵)⍴⌽,⍵}

toHex←{'0123456789ABCDEF'[1+16 16 16 16⊤⍵]}
toHex X←⎕

fromHex←{16 16 16 16⊥¯1+'0123456789ABCDEF'⍳⍵}
fromHex X←⍞

strcmp←{(⍴⍺)≡(⍴⍵):^/⍺=⍵⋄0}
beginWith←{∧/⍵=(⍴⍵)↑⍺}

fac←{⍵>1:⍵×∇⍵-1⋄1}
_primes←{(~_∊_∘.×_)/_←1↓⍳⍵} ⍝ find primes up to Rarg, e.g. '_primes 50'

summary←{(1=≡⍵)∧1=⍴⍴⍵:(('min', ⌊/⍵), ('avg', +/⍵÷(⍴⍵)),( 'max', ⌈/⍵)) ⋄ 'no nested vectors, please'}
avg←{+/⍵÷⍴⍵} ⍝ get rho(w) first, divide vector w by scalar rho(w), fold by '+' the result vector

_dltb←{a←(∨\⍵≠' ')/⍵ ⋄ (⌽∨\⌽a≠' ')/a} ⍝ trim spaces
_magicCube←{A⊖(A←(⍳⍵)-⌈⍵÷2)⌽(⍵,⍵)⍴⍳⍵×⍵} ⍝ gen magic cube with side Rarg
_is_not_string←{' '≠1↑0⍴⍵} ⍝ found in prod code, LO func
print_all_the_chars←(¯1+⍳17)⍪((⍳16),16 16⍴⎕AV) ⍝ no arguments, just print the used chartable (it's not ASCII, surprise surprise)

_hor_barchart←{' ⎕'[⎕IO+⍵∘.≥⍳⌈/⍵]}
_vert_barchart←{' ⎕'[⎕IO+(⌽⍳⌈/⍵)∘.≤⍵]}
