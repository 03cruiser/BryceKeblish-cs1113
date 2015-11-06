module friend

import bool

|||A friend is someone who is or isn't trustworthy
|||A name and age in years

data friend = mkFriend bool String Nat

f1: friend
f1 = (mkFriend true "Zach" 18)

f2: friend
f2 = (mkFriend false "Jerry" 25)

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName = (mkFriend b s n) = s

getTrust: friend -> bool
getTrust = (mkFriend b s n) = b
