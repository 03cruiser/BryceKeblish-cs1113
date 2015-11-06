module dnaTest

import dna
import list
import nat
import bool

base1: base
base1 = A

base2: base
base2 = T

base3: base
base3 = C

base4: base
base4 = G

baseList1: list base
baseList1 = A :: T :: G :: C:: nil

compliments : list base
compliments = compliment_strand baseList1

