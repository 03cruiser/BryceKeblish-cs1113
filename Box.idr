module Box
import unit
data box = mkBox unit

b1: Box
b1 = mkBox true

b2: Box
b2 = mkBox false

unbox: Box -> unit
unbox (mkBox _) =mkUnit
