SELECT DISTINCT B.COD_EMPL as 'Identificacion', 
				B.NOM_EMPL as 'Nombre Empleado',
				B.APE_EMPL as 'Apellido Empleado',
				C.cod_ccos as 'Codigo Centro de Costo',
				T.nom_ccos as 'Nombre Centro de Costo',
				c.cod_carg as 'Codigo Cargo',
				E.nom_carg as 'Nombre Cargo'
FROM NM_CONTR C
INNER JOIN BI_EMPLE B ON (C.COD_EMPR = B.COD_EMPR) AND (C.COD_EMPL = B.COD_EMPL)
INNER JOIN gn_ccost T ON (C.cod_ccos=T.cod_ccos)
INNER JOIN bi_cargo E ON (C.COD_CARG=E.COD_CARG)
WHERE (C.COD_EMPR = 1)
  AND (C.IND_ACTI <> 'I')
  AND (B.COD_EMPL <> 0)
  AND NOT (B.COD_EMPL IN (
    SELECT DISTINCT F.COD_EMPL
    FROM BI_FOEMP F
    WHERE (F.COD_EMPR = C.COD_EMPR)
  ))
ORDER BY B.APE_EMPL, B.NOM_EMPL