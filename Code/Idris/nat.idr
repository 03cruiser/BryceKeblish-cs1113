module nat

import bool
import eq
import Serialize

%default total

data nat = O | S nat

|||returns true if the argument (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero (S _) = false

|||returns successor of any given nat
succ: nat -> nat
succ n = S n

|||returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S(S n)) = evenb n

add: nat->  nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
