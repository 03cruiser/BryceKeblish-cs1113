module set_spec_Test

import set_adt_hw
import list
import bool
import nat


isE: set bool
isE = mkSet (true::false::false::nil)
--should return false because the list is not empty

si: bool
si = true
si_set: set bool
si_set = mkSet (false::false::nil)
-- should insert true into the set

sm: nat
sm = (S (S O))
sm_set: set nat
sm_set = mkSet ((S O)::(S (S O))::(S (S (S O)))::nil)
--should remove (S (S O)) from the set

sc: set bool
sc = mkSet (true::true::false::nil)
--should return 3 (or, S (S (S O)))

sMem: nat
sMem = (S O)
sMem_set: set nat
sMem_set = mkSet ((S O)::(S (S O))::nil)
--should return true

su1: list bool
su1 = (true::nil)
su2: list bool
su2 = (false::nil)
--should create a set containing the list of (true::false::nil)

s_int1: list nat
s_int1 = ((S O)::(S O)::nil)
s_int2: list nat
s_int2 = ((S (S (S O))):: (S O)::nil)
--should append the two lists into one set create (1, 1, 3, 1)

sd1: list bool
sd1 = (true::false::true::nil)
sd2: list bool
sd2 = (true::false::true::nil)
--should give the set nil

sf_p: nat -> bool
sf_p = evenb
sf_set: set nat
sf_set = mkSet ((S O)::(S (S O))::nil)
--should return false because (S O) is not even

se: nat -> bool
se = isZero
se_set: set nat
se_set = mkSet (O::(S O)::(S (S O))::nil)
--should return true because O is in the set

sw: nat -> bool
sw = evenb
sw_set: set nat
sw_set = mkSet (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
--should return "some O" because O will be the first thing Idris reads
  --in the set

sp1: list bool
sp1 = (true::true::true::nil)
sp2: list bool
sp2 = (false::false::false::nil)
--should return the mkPair of true false "consed" 9 times
