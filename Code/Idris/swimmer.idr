module swimmer

import bool
import list
import nat
import pair

{- I created a record of two swimmers named Bryce and Zach. In
addition to their names I incuded their age and assigned a boolean
value to denote whether or not they are on the National Team (NT). -}

record swimmer where
    constructor mkSwimmer
    name : String
    age : Nat
    NT : bool

b: swimmer
b = mkSwimmer "Bryce" 18 true

z: swimmer
z = mkSwimmer "Zach" 18 true

m: swimmer
m = mkSwimmer "Max" 19 false

e: swimmer
e = mkSwimmer "Ethan" 17 false

swimmers: list swimmer
swimmers = b::z::m::e::nil

n1: String
n1 = name b

a1: Nat
a1 = age b

nt1: bool
nt1 = NT b

n2: String
n2 = name z

a2: Nat
a2 = age z

nt2: bool
nt2 = NT z

n3: String
n3 = name m

a3: Nat
a3 = age m

nt3: bool
nt3 = NT m

n4: String
n4 = name e

a4: Nat
a4 = age e

nt4: bool
nt4 = NT e

getAge: swimmer -> Nat
getAge (mkSwimmer name age NT) = age
