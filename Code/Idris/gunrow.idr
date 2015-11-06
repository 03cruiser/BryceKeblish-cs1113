module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A reord of this type represents a country andd the death rate per 10 million by gun for homicides, suicides,unintentional and other
data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

--countryName: gunrow -> country

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

aust: gunrow
aust = mkGunrow Australia 11 62 5 8

austria: gunrow
austria = mkGunrow Austria 18 268 1 8

hon: gunrow
hon = mkGunrow Honduras 648 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9

listCountry: list gunrow
listCountry = append (cons argen nil) (cons aust (cons austria (cons hon (cons usa nil))))
