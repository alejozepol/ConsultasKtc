SELECT A.COD_EMPL,B.NOM_EMPL, B.APE_EMPL, A.COD_CONC, C.NOM_CONC, --a.fec_acum,
        (CASE C.TIP_CONC when 'I' THEN 'INGRESO'ELSE 'EGRESO' end) as tipo, 
		(CAST(SUM(a.can_acum) AS money)) as cantidad,
		 (CASE C.TIP_CONC when 'I' THEN (CAST(SUM(VAL_ACUM) AS money)) ELSE (CAST(SUM(VAL_ACUM * -1) AS money)) end) as valor
FROM nm_acumu A, BI_EMPLE B, NM_CONCE C
WHERE FEC_ACUM BETWEEN '20220916' AND '20220930'
AND A.COD_EMPL=B.COD_EMPL
AND C.COD_CONC=A.COD_CONC
AND C.cod_empr=B.cod_empr
and c.cod_empr=627
AND tip_nomi <> 'D'
AND A.COD_EMPL=179241
--and a.cod_conc in(select cod_conc from nm_proto where cod_prot=6)
--AND A.COD_CONC IN(6002,4061)
GROUP BY A.COD_EMPL,B.NOM_EMPL, B.APE_EMPL, A.COD_CONC, C.NOM_CONC,TIP_CONC
order by cod_empl
