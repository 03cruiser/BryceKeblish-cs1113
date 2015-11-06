-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument
--match up pattern with term you're trying to match; the result on the
-- right is expressed in terms of names expressed on the left

module bool

import pair

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

-- given a pair of bool values, (a, b), return true if both a and b are true, otherwise return false
andp: pair bool bool -> bool
andp (mkPair true true) = true
andp (mkPair _ _) = false

-- given a pair of bool values, (a, b), return false if both a and b are false, otherwise return true
orp: pair bool bool -> bool
orp (mkPair false false) = false
orp (mkPair _ _) = true

-- short for "not and", given a pair of bool values, (a, b), return false if both a and b are true, and true otherwise
nandp: pair bool bool -> bool
nandp (mkPair a b) = not (andp (mkPair a b))

-- short for "exclusive or", given a pair of bool values, (a, b), return true if exactly one of a or b is true, and false otherwise
xorp: pair bool bool -> bool
xorp (mkPair true _) = true
xorp (mkPair false false) = false

--{Exam Problem #2: There are exactly 4 possible ways to fill in the result column for a truth table for a binary Boolean function, and there are thus exactly 4 such functions, and no more."}--

pand: bool -> bool -> bool
pand true = (id_bool)
pand false = constFalse

por: bool -> bool -> bool
por true = constTrue
por false = id_bool

pxor: bool -> bool -> bool
pxor true = not
pxor false = id_bool

pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue
