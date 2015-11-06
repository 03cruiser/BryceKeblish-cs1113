module test

import bool

data nat = O | S nat

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n
