module Box

import bool
import unit
import eq
import Serialize

data Box a = mkBox a

unbox: Box a -> a
unbox (mkBox b) = b

--eql_Box: (eq a) => Box a -> Box a -> bool
--eql_Box (mkBox v1) (mkBox v2) = eql v1 v2

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ",)"
