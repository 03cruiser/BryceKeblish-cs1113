module loves

import pair

data person = Mary | Maurice

loves: person -> person
loves Mary = Maurice
loves Maurice = Mary

p1: pair person person
p1 = mkPair Mary Maurice

p2: pair person person
p2 = mkPair Maurice Maurice
 
