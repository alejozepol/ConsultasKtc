SELECT	empl.cod_empr	AS empresa,
		n1.nom_nive		as REGIONAL,
		ctr.cod_empl	AS IDENTIFICACION,
		empl.nom_empl	AS NOMBRES,
		empl.ape_empl	AS APELLIDOS,
		ctr.tip_cont	AS TIPO_DE_CONTRATO,
		ctr.tip_remu	AS Jornada_diaria,
		ctr.TIP_SALA	AS Tipo_Salario,
		cargo.NOM_CARG	AS Descripción_Cargo,
		ctr.fec_cont	AS Fecha_Contrato,
		ctr.fec_venc	AS Fecha_Vencimiento,
		empl.sex_empl	AS GENERO,
		n2.nom_nive		AS SECCIONAL,
		n3.nom_nive		AS CIUDAD,
		n4.nom_nive		AS VICEPRESIDENCIA_GERENCIA_PRIMER_NIVEL,
		n5.nom_nive		AS GERENCIA_SEGUNDO_NIVEL,
		E.nom_cenp		AS Nombre_Centro_Trabajo,
		EEPS.nom_enti	AS EPS,
		EAFP.nom_enti	AS AFP,
		ECCF.nom_enti	AS CCF,
		EAFC.nom_enti	AS AFC,
		empl.fec_naci	AS FECHA_NACIMIENTO,
		ctr.sue_basi	AS SUELDO_BASICO
FROM bi_emple empl
inner join nm_contr ctr		on empl.cod_empr=ctr.cod_empr	and empl.cod_empl=ctr.cod_empl
inner join bi_cargo cargo	on cargo.cod_empr=ctr.cod_empr	and cargo.cod_carg=ctr.cod_carg
inner join nm_centp e		on e.cod_empr=ctr.cod_empr		and e.cod_cenp=ctr.cod_cenp
--Cuentas de empleados
inner join nm_cuent eps		on eps.cod_empr=ctr.cod_empr	and eps.cod_empl=ctr.cod_empl	and eps.nro_cont=ctr.nro_cont	and eps.tip_enti='EPS'
inner join nm_entid eeps	on eeps.cod_empr=ctr.cod_empr	and eeps.cod_enti=eps.cod_enti	AND EEPS.cod_sucu=0				and eeps.tip_enti='EPS'
inner join nm_cuent afp		on afp.cod_empr=ctr.cod_empr	and afp.cod_empl=ctr.cod_empl	and afp.nro_cont=ctr.nro_cont	and afp.tip_enti='AFP'
inner join nm_entid eafp	on eafp.cod_empr=ctr.cod_empr	and eafp.cod_enti=afp.cod_enti	AND Eafp.cod_sucu=0				and eafp.tip_enti='AFP'
inner join nm_cuent ccf		on ccf.cod_empr=ctr.cod_empr	and ccf.cod_empl=ctr.cod_empl	and ccf.nro_cont=ctr.nro_cont	and ccf.tip_enti='CCF'
inner join nm_entid eccf	on eccf.cod_empr=ctr.cod_empr	and eccf.cod_enti=ccf.cod_enti	AND Eccf.cod_sucu=0				and eccf.tip_enti='CCF'
inner join nm_cuent afc		on afc.cod_empr=ctr.cod_empr	and afc.cod_empl=ctr.cod_empl	and afc.nro_cont=ctr.nro_cont	and afc.tip_enti='AFC'
inner join nm_entid eafc	on eafc.cod_empr=ctr.cod_empr	and eafc.cod_enti=afc.cod_enti	AND Eafc.cod_sucu=0				and eafc.tip_enti='AFC'

--Niveles
inner join gn_nivel n1		on empl.cod_empr=n1.cod_empr	and n1.cod_nive=ctr.cod_niv1	AND n1.ide_arbo=ctr.ide_arbo	and n1.cod_arbo=ctr.cod_arbo and n1.num_nive=1
left join gn_nivel n2		on empl.cod_empr=n2.cod_empr	and n2.cod_nive=ctr.cod_niv2	AND n2.ide_arbo=ctr.ide_arbo	and n2.cod_arbo=ctr.cod_arbo and n2.num_nive=2
left join gn_nivel n3		on empl.cod_empr=n3.cod_empr	and n3.cod_nive=ctr.cod_niv3	AND n3.ide_arbo=ctr.ide_arbo	and n3.cod_arbo=ctr.cod_arbo and n3.num_nive=3
left join gn_nivel n4		on empl.cod_empr=n4.cod_empr	and n4.cod_nive=ctr.cod_niv4	AND n4.ide_arbo=ctr.ide_arbo	and n4.cod_arbo=ctr.cod_arbo and n4.num_nive=4
left join gn_nivel n5		on empl.cod_empr=n5.cod_empr	and n5.cod_nive=ctr.cod_niv4	AND n5.ide_arbo=ctr.ide_arbo	and n5.cod_arbo=ctr.cod_arbo and n5.num_nive=5

WHERE empl.cod_empr=409
--and empl.cod_empl=1006198212
