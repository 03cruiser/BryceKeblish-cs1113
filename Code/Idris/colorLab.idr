module color

import bool
import pair

data color = red | blue | green | yellow | magenta | cyan

compliment: color -> color
compliment red = cyan
compliment green = magenta
compliment blue = yellow
compliment magenta = green
compliment cyan = red
compliment yellow = blue

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive c = not (additive c)

compliments: pair color color -> bool
compliments (mkPair blue yellow) = true
compliments(mkPair green magenta) = true
compliments (mkPair red cyan) = true
compliments (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair yellow cyan) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta cyan) = blue
mixink (mkPair magenta yellow) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair cyan magenta) = blue
