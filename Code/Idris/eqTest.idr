module eqTest

import eq
import nat
import bool
import unit

b: bool
b = (eql true true)

n: bool
n = (eql O O)

u: bool
u = eql mkUnit mkUnit
