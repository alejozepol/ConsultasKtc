SELECT A.COD_EMPL,B.NOM_EMPL, B.APE_EMPL, d.cod_gpro, c.tip_conc, SUM(VAL_ACUM) as val_acum
FROM NM_ACUMU A, BI_EMPLE B, NM_CONCE C, nm_contr d 
WHERE FEC_ACUM BETWEEN '20150101' AND '20150131'
AND A.COD_EMPL=B.COD_EMPL
AND C.COD_CONC=A.COD_CONC
and d.cod_empl=a.cod_empl
and d.nro_cont=a.nro_cont
--AND A.COD_EMPL=71583243
and a.cod_conc in(select cod_conc from nm_proto where cod_prot=1393)
GROUP BY A.COD_EMPL,B.NOM_EMPL, B.APE_EMPL,c.tip_conc, d.cod_gpro--, A.COD_CONC, C.NOM_CONC