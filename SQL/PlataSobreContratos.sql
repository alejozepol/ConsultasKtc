	/*Con este script puede generar un listado de los empleados activos generando una planta
	basada en contratos (KNmContr) */


declare @ncod_empr smallint;
/*asignar el codigo de la empresa que quiere consultar*/
select @ncod_empr =409 --codigo empresa

SELECT	a.cod_empr as 'Codigo Empresa' ,
			A.COD_EMPL as 'Identificación',
			( ltrim(rtrim((B.APE_EMPL)) +' '+ltrim(rtrim((B.NOM_EMPL))))) as 'Apellidos y Nombres' ,
			d.nom_carg as 'Nombre Cargo',
			CONVERT(date,A.FEC_INGR,110) AS 'Fecha Inicio',
			c.nom_ccos as 'Centro de Costo',
			e.nom_tnom as 'Clase de Nomina',
			i.nom_gpro as 'grupo de prototipo',
			(CASE a.tip_cont when 'I' THEN 'Indefinido' 
			else CASE a.tip_cont when 'F' THEN 'Fijo' 
			else CASE a.tip_cont when 'S' THEN 'Sena' end end end) as 'Tipo de Contrato',
			CAST ((A.sue_basi) AS money) as 'Sueldo Basico',
			a.cod_frep as 'Identificación Jefe',
			( ltrim(rtrim((f.APE_EMPL)) +' '+ltrim(rtrim((f.NOM_EMPL))))) as 'Jefe Apellidos y Nombres',
			g.nom_ccos as 'Jefe Centro de Costo'
	FROM BI_EMPLE B
	inner join nm_contr a on b.cod_empl=a.cod_empl and b.cod_empr=a.cod_empr
	inner join gn_ccost c on c.cod_ccos=a.cod_ccos and c.cod_empr=a.cod_empr
	inner join bi_cargo d on d.cod_carg=a.cod_carg and d.cod_empr=a.cod_empr
	inner join nm_tnomi e on a.cod_tnom=e.cod_tnom and e.cod_empr=a.cod_empr
	inner join nm_gprot i on i.cod_gpro=a.cod_gpro and e.cod_empr=a.cod_empr
	LEFT join bi_emple f on f.cod_empl=a.cod_frep and f.cod_empr=a.cod_empr
	left join nm_contr h on f.cod_empl=h.cod_empl and f.cod_empr=h.cod_empr and h.ind_acti='A'
	left join gn_ccost g on g.cod_ccos=h.cod_ccos and g.cod_empr=h.cod_empr
	where a.ind_acti='A'
	and a.cod_empr = @ncod_empr -- puede comentar el filtro para consultar consultar a todos los empleados sin importar la empresa.
	GROUP BY a.cod_empr, A.COD_EMPL,B.NOM_EMPL,
			 B.APE_EMPL,a.sue_basi,A.FEC_INGR,c.nom_ccos,e.nom_tnom,i.nom_gpro,a.tip_cont,
			 a.cod_frep,f.NOM_EMPL, f.APE_EMPL,g.nom_ccos,d.nom_carg
	ORDER BY A.COD_EMPL
	
	
	

	/*Con este script puede generar un listado de los empleados activos con datos basicos*/


declare @ncod_empr smallint;
/*asignar el codigo de la empresa que quiere consultar*/
select @ncod_empr =627 --codigo empresa

SELECT DISTINCT
				B.COD_EMPL as 'Identificacion', 
				B.cod_inte as 'Codigo',
				B.NOM_EMPL as 'Nombre Empleado',
				PARSENAME(REPLACE(B.APE_EMPL,' ','.'),1) as 'Primer Apellido',
				PARSENAME(REPLACE(B.APE_EMPL,' ','.'),2) as 'Segundo Apellido',
				B.tel_movi as 'Celular',
				B.tel_resi as 'Telefono Fijo',
				B.dir_resi as 'Direccion',
				B.bar_resi as 'Barrio',
				loc.nom_mpio as 'Localidad',
				convert(date,b.fec_naci) AS 'Fecha de Nacimiento',
				convert(date,C.fec_ingr) AS 'Fecha de Ingreso',
				e.nom_carg as 'Cargo',
				nomi.nom_tnom AS 'Clasifiacion'
FROM NM_CONTR C
INNER JOIN BI_EMPLE B
  ON (C.COD_EMPR = B.COD_EMPR) AND (C.COD_EMPL = B.COD_EMPL) and c.cod_empr=b.cod_empr
INNER JOIN bi_cargo E ON (C.COD_CARG=E.COD_CARG)  and e.cod_empr=b.cod_empr
inner join nm_tnomi nomi on nomi.cod_empr=c.cod_empr and nomi.cod_tnom=c.cod_tnom
left join gn_divip loc 
	on loc.cod_pais=b.pai_resi 
	and loc.cod_mpio=b.mpi_resi 
	and loc.cod_dpto=b.dto_resi
	and loc.COD_LOCA=b.loc_resi
WHERE (C.COD_EMPR = @ncod_empr)
  AND (C.IND_ACTI = 'A')
  AND (B.COD_EMPL <> 0)
ORDER BY  B.NOM_EMPL

