/*Con este script puede generar un listado de los empleados activos que no poseen 
	referencias laborales en el programa hoajde  vida externa (KBiHvExt)*/


declare @ncod_empr smallint;
/*asignar el codigo de la empresa que quiere consultar*/
select @ncod_empr =409 --codigo empresa

SELECT DISTINCT C.cod_ccos as 'Codigo Centro de Costo',
				T.nom_ccos as 'Nombre Centro de Costo',
				'Referencias laborales incompletas' as Tipo,
				B.COD_EMPL as 'Identificacion', 
				B.NOM_EMPL as 'Nombre Empleado',
				B.APE_EMPL as 'Apellido Empleado',
				c.cod_carg as 'Codigo Cargo',
				f.nom_carg as 'Nombre Cargo'
FROM NM_CONTR C
INNER JOIN BI_EMPLE B
  ON (C.COD_EMPR = B.COD_EMPR) AND (C.COD_EMPL = B.COD_EMPL)
INNER JOIN BI_HVEXT E
  ON (C.COD_EMPR = E.COD_EMPR) AND (C.COD_EMPL = E.COD_EMPL)
   INNER JOIN gn_ccost T ON (C.cod_ccos=T.cod_ccos)
INNER JOIN bi_cargo f ON (C.COD_CARG=f.COD_CARG)
WHERE (C.COD_EMPR = @ncod_empr)
  AND (((E.FEC_INGR IS NULL) OR (E.FEC_INGR = '18991230' ))-- tener en el formato de fecha del servidor
    OR ((E.FEC_RETI IS NULL) OR (E.FEC_RETI = '18991230'))-- tener en cuenta el formato de fecha del servidor
    OR ((E.COD_EMPR IS NULL) OR (E.COD_EMPR = 0))
    OR ((E.TIP_EMPR IS NULL) OR (E.TIP_EMPR = ''))
    OR ((E.DIR_EMPR IS NULL) OR (E.DIR_EMPR = ''))
    OR ((E.TEL_EMPR IS NULL) OR (E.TEL_EMPR = ''))
    OR ((E.DED_ICAC IS NULL) OR (E.DED_ICAC = ''))
    OR ((E.CAR_DESE IS NULL) OR (E.CAR_DESE = ''))
    OR ((E.PAI_EMPR IS NULL) OR (E.PAI_EMPR = 0))
    OR ((E.DTO_EMPR IS NULL) OR (E.DTO_EMPR = 0))
    OR ((E.MPI_EMPR IS NULL) OR (E.MPI_EMPR = 0)))
  AND (C.IND_ACTI <> 'I')
  AND (B.COD_EMPL <> 0)
ORDER BY B.APE_EMPL, B.NOM_EMPL
