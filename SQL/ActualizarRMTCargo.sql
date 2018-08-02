update BI_TEXCR set RMT_CARG=c.rmt_carg
from BI_TEXCR t, bi_cargo c
where t.COD_EMPR=c.cod_empr
and t.COD_CARG=c.cod_carg