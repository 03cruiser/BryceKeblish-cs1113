module dna

import list
import nat
import bool
import pair

data base = A | T | C | G

compliment_base: base -> base
compliment_base A = T
compliment_base T = A
compliment_base C = G
compliment_base G = C

compliment_strand: list base -> list base
compliment_strand = Map compliment_base

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair a b)::l) = a::strand1 l

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair a b)::l) = b::strand2 l

switch: base -> pair base base
switch b = mkPair b (compliment_base b)

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = (switch h)::(Map switch t)

change: base -> base -> Nat
change A A = 1
change T T = 1
change C C = 1
change G G = 1
change _ _ = 0

countBase: (list base) -> base -> Nat
countBase l b = list.foldr plus 0 (Map (change b) l)
