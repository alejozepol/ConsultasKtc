SELECT DISTINCT	C.cod_ccos as 'Codigo Centro de Costo',
				T.nom_ccos as 'Nombre Centro de Costo',
				B.COD_EMPL as 'Identificacion', 
				B.APE_EMPL as 'Apellido Empleado',
				B.NOM_EMPL as 'Nombre Empleado',
				c.cod_carg as 'Codigo Cargo',
				E.nom_carg as 'Nombre Cargo',
				convert(date,C.fec_ingr) AS 'Fecha de Ingreso'
FROM NM_CONTR C
INNER JOIN BI_EMPLE B
  ON (C.COD_EMPR = B.COD_EMPR) AND (C.COD_EMPL = B.COD_EMPL)
  INNER JOIN gn_ccost T ON (C.cod_ccos=T.cod_ccos)
INNER JOIN bi_cargo E ON (C.COD_CARG=E.COD_CARG)
WHERE (C.COD_EMPR = 1)
  AND (C.IND_ACTI <> 'I')
  AND (B.COD_EMPL <> 0)
  AND (((B.NOM_EMPL IS NULL) OR (B.NOM_EMPL = ''))
    OR ((B.APE_EMPL IS NULL) OR (B.APE_EMPL = ''))
    OR ((B.SEX_EMPL IS NULL) OR (B.SEX_EMPL = ''))
    OR ((B.PAI_NACI IS NULL) OR (B.PAI_NACI = 0))
    OR ((B.DTO_NACI IS NULL) OR (B.DTO_NACI = 0))
    OR ((B.MPI_NACI IS NULL) OR (B.MPI_NACI = 0))
    OR ((B.EST_CIVI IS NULL) OR (B.EST_CIVI = ''))
    OR ((B.TEL_RESI IS NULL) OR (B.TEL_RESI = ''))
    OR ((B.TEL_MOVI IS NULL) OR (B.TEL_MOVI = '')))
ORDER BY  	C.cod_ccos,B.APE_EMPL, B.NOM_EMPL

