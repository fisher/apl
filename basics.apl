⍝ ←+-×÷*⍟⌹○!? |⌈⌊⊥⊤⊣⊢ =≠≤<>≥≡≢ ∨∧⍱⍱ ↑↓⊂⊃⎕⍋⍒ ⍳⍷∪∩∊~ /\⌿⍀,⍪⍴⌽⊖⍉ ¨⍨⍣.∘⍤ ⍞⎕⍠⌸⍎⍕ ⋄→⍵⍺∇& ¯⍬

flipDiagonal←{(⍴⍵)⍴⌽,⍵}

toHex←{'0123456789ABCDEF'[1+16 16 16 16⊤⍵]}
toHex X←⎕

fromHex←{16 16 16 16⊥¯1+'0123456789ABCDEF'⍳⍵}
fromHex X←⍞

strcmp←{(⍴⍺)=(⍴⍵):^/⍺=⍵⋄0}
fac←{⍵>1:⍵×∇⍵-1⋄1}
