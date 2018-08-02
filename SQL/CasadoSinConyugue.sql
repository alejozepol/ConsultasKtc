/*Con este script puede generar un listado de los empleados activos que en el maestro de empleados (KBiEmple) 
    se encuentra como casado o union libre y en el maestro de familiares (KBiFamil) no tiene registrado su conyugue. */


declare @ncod_empr smallint;
/*asignar el codigo de la empresa que quiere consultar*/
select @ncod_empr =409 --codigo empresa

SELECT DISTINCT C.cod_ccos as 'Codigo Centro de Costo',
				T.nom_ccos as 'Nombre Centro de Costo',
				'Casado sin Conyugue registrados' as Tipo,
				B.COD_EMPL as 'Identificacion', 
				B.NOM_EMPL as 'Nombre Empleado',
				B.APE_EMPL as 'Apellido Empleado',
				c.cod_carg as 'Codigo Cargo',
				E.nom_carg as 'Nombre Cargo'
FROM NM_CONTR C
INNER JOIN BI_EMPLE B
  ON (C.COD_EMPR = B.COD_EMPR) AND (C.COD_EMPL = B.COD_EMPL)
  INNER JOIN gn_ccost T ON (C.cod_ccos=T.cod_ccos)
INNER JOIN bi_cargo E ON (C.COD_CARG=E.COD_CARG)
WHERE (C.COD_EMPR = @ncod_empr)
  AND (C.IND_ACTI <> 'I')
  AND (B.COD_EMPL <> 0)
  AND (B.EST_CIVI IN ('C', 'U'))
  AND NOT EXISTS (
    SELECT DISTINCT 1
    FROM BI_FAMIL F
    WHERE (C.COD_EMPR = F.COD_EMPR)
      AND (C.COD_EMPL = F.COD_EMPL)
      AND (F.TIP_RELA IN ('C', 'O'))
  )
ORDER BY B.APE_EMPL, B.NOM_EMPL
