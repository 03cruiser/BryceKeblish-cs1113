module swimmerTest

import relationTest
import swimmer
import relation
import list
import bool
import pair

number: Nat
number = query2 swimmers NT countOne plus 0

swimmerAges: Nat
swimmerAges = query2 swimmers NT getAge plus 0

swimmerAvgAge: pair Nat Nat
swimmerAvgAge = ave_rel swimmers NT age
