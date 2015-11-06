module boolTest2

import bool

pand_t_t: bool
pand_f_f: bool
pand_t_t = pand true true
pand_f_f = pand false false

por_t_t: bool
por_f_f: bool
por_t_t = por true true
por_f_f = por false false

pxor_t_t: bool
pxor_f_f: bool
pxor_t_t = pxor false false
pxor_f_f = pxor false false

pnand_t_t: bool
pnand_f_f: bool
pnand_t_t = pnand false false
pnand_f_f = pnand true true
