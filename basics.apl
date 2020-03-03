⍝ ←+-×÷*⍟⌹○!? |⌈⌊⊥⊤⊣⊢ =≠≤<>≥≡≢ ∨∧⍱⍱ ↑↓⊂⊃⎕⍋⍒ ⍳⍷∪∩∊~ /\⌿⍀,⍪⍴⌽⊖⍉ ¨⍨⍣.∘⍤ ⍞⎕⍠⌸⍎⍕ ⋄→⍵⍺∇& ¯⍬

flipDiagonal←{(⍴⍵)⍴⌽,⍵}

toHex←{'0123456789ABCDEF'[1+16 16 16 16⊤⍵]}
toHex X←⎕

fromHex←{16 16 16 16⊥¯1+'0123456789ABCDEF'⍳⍵}
fromHex X←⍞

strcmp←{(⍴⍺)≡(⍴⍵):^/⍺=⍵⋄0}
beginWith←{∧/⍵=(⍴⍵)↑⍺}

fac←{⍵>1:⍵×∇⍵-1⋄1}
_primes←{(~_∊_∘.×_)/_←1↓⍳⍵}

summary←{(1=≡⍵)∧1=⍴⍴⍵:(('min', ⌊/⍵), ('avg', +/⍵÷(⍴⍵)),( 'max', ⌈/⍵)) ⋄ 'no nested vectors, please'}
avg←{+/⍵÷⍴⍵} ⍝ get rho(w) first, divide vector w by scalar rho(w), fold by '+' the result vector

_dltb←{a←(∨\⍵≠' ')/⍵ ⋄ (⌽∨\⌽a≠' ')/a} ⍝ trim spaces
