SELECT A.COD_EMPL,A.NRO_CONT, B.NOM_EMPL, B.APE_EMPL, A.COD_CONC, C.NOM_CONC, MONTH (a.fec_acum) AS MES,
        (CASE C.TIP_CONC when 'I' THEN 'INGRESO'ELSE 'EGRESO' end) as tipo,
      (CAST(SUM(VAL_ACUM) AS money)) as valor
FROM NM_ACUMU A, BI_EMPLE B, NM_CONCE C
WHERE FEC_ACUM BETWEEN '01/01/2014' AND '31/12/2014'
AND A.COD_EMPL=B.COD_EMPL
AND C.COD_CONC=A.COD_CONC
--AND A.COD_EMPL=3162669
--and a.cod_conc in(select cod_conc from nm_proto where cod_prot=6)
--AND A.COD_CONC IN(6002,4061)
GROUP BY A.COD_EMPL,B.NOM_EMPL, B.APE_EMPL, A.COD_CONC, C.NOM_CONC,TIP_CONC, MONTH(fec_acum), A.NRO_CONT
order by cod_empl, MONTH(fec_acum), A.cod_conc

/**Consulta prenomina**/

SELECT A.COD_EMPL,A.NRO_CONT, B.NOM_EMPL, B.APE_EMPL, A.COD_CONC, C.NOM_CONC, MONTH (a.fec_acum) AS MES, year (a.fec_acum) AS año,
        (CASE C.TIP_CONC when 'I' THEN 'INGRESO'ELSE 'EGRESO' end) as tipo,
      (CAST(SUM(VAL_ACUM) AS money)) as valor
FROM nm_preno A, BI_EMPLE B, NM_CONCE C
WHERE FEC_ACUM BETWEEN '01/01/2015' AND '31/12/2016'
AND A.COD_EMPL=B.COD_EMPL
AND C.COD_CONC=A.COD_CONC
--AND A.COD_EMPL=45440153
--and a.cod_conc in(select cod_conc from nm_proto where cod_prot=6)
--AND A.COD_CONC IN(6002,4061)
GROUP BY A.COD_EMPL,B.NOM_EMPL, B.APE_EMPL, A.COD_CONC, C.NOM_CONC,TIP_CONC, MONTH(fec_acum), year(fec_acum), A.NRO_CONT
order by cod_empl, year(fec_acum), MONTH(fec_acum), A.cod_conc
