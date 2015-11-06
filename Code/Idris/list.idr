module list

import nat
import bool
import eq
import Serialize

infixr 7 ::,++

data list a = nil |(::) a (list a)

length: list a -> nat
length nil = O
length (h::t) = S (length t)

append: list a -> list a -> list a
append nil l2 = l2
append (h::l1) l2 = h::(append l1 l2)

|||append as an infix operator (++)
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

|||map the elements of a list
Map: (a -> b) -> list a -> list b
Map f nil = nil
Map f (h::t) = (f h)::(Map f t)

ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb

||| give a list and a predicate on the elements return the subject of elements for which the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)


member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true
                      (member v t)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil t = true
subset_elements (h::t) l = ite (member h l) false  (subset_elements t l)

same_element: (eq a) => list a -> list a -> bool
same_element l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

{-list_toString: (Serialize a) => list a -> String
list_toString nil = ""
list_toString (h::nil) = (toString h)
list_toString (h::t) = (toString h) ++ ", " ++ (list_toString (t))


instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (list_toString l) ++ "]"-}
