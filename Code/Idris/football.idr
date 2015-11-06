module football

import list

data team = Eagles | Falcons | Seahawks

data rowThing = mkRowThing team Nat Nat Nat

eag: rowThing
eag = mkRowThing Eagles 1 2 3

fal: rowThing
fal = mkRowThing Falcons 3 2 1

sea: rowThing
sea = mkRowThing Seahawks 2 1 3

teamName: rowThing -> team
teamName (mkRowThing t p r s) = t

avgPass: rowThing -> Nat
avgPass (mkRowThing t p r s) = p

avgRush: rowThing -> Nat
avgRush (mkRowThing t p r s) = r

avgSack: rowThing -> Nat
avgSack (mkRowThing t p r s) = s
