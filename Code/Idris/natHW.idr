module nat

import bool


||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

z: nat
z = O

o: nat
o = S O

t: nat
t = S (S O)

r: nat
r = S t

fr: nat
fr = S (S t)

f: nat
f = S (S fr)

six: nat
six = S f

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

x: bool
x = isZero r

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

y: nat
y = (S O)

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb r

e: bool
e = evenb (S r)

||| given a pair of natural numbers, return its sum
add: nat ->  nat -> nat
add O m = m
add (S n) m = S (add n m)

||| a test, expecting O
h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add (O) (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = add (S (S O)) (S (S (S O)))

||| given a pair of natural numbers, return its product
mult: nat ->  nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n') = mult (S n') (fact n')

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

ex: nat -> nat -> nat
ex n O = (S O)
ex n (S m) = mult n (ex n m)

eq: nat -> nat -> bool
eq O O = true
eq (S O) (O) = false
eq O (S n) = false
eq (S n) (S m) = eq n m

gt: nat -> nat -> bool
gt a O = true
gt O O = true
gt O a = false
gt (S a) (S b) = gt a b

ge: nat -> nat -> bool
ge a b = not (le a b)

lt: nat ->  nat -> bool
lt a b = not (gt a b)

