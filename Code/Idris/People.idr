module people

import list
import nat
import bool
import Person

women: list Person
women = filter gender people

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender people))

query: (value -> result -> result) -> result -> (tuple -> value) -> (tuple -> bool) -> (list tuple) -> result
query reduce id project select relation = list.foldr reduce id (map project (filter select relation))
