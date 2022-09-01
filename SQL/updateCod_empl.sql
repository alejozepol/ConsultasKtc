DECLARE @COD_EMPL DECIMAL(13,0);
DECLARE @COD_EMPL_NEW DECIMAL(13,0);


SET @COD_EMPL = 1001270325
SET @COD_EMPL_NEW = 1001270825


	INSERT INTO BI_EMPLE
	SELECT 
		cod_empr,tip_docu,@COD_EMPL_NEW,dto_expe,pai_expe,mpi_expe,cod_inte,ape_empl,nom_empl,nac_iona,pai_extr,sex_empl,cla_lmil,num_lmil,dis_lmil,pai_naci,dto_naci,mpi_naci,fec_naci,pai_resi,dto_resi,mpi_resi,dir_resi,bar_resi,rut_resi,tel_resi,est_civi,per_carg,gra_educ,tit_obte,pro_titu,mat_prof,ano_serp,mes_serp,dia_serp,vin_serp,ano_spri,mes_spri,dia_spri,vin_spri,ano_trai,mes_trai,dia_trai,vin_trai,ult_enti,pub_real,tie_inha,obs_inha,obs_erva,act_usua,act_hora,act_esta,box_mail,eee_mail,tel_trab,tel_movi,tel_faxi,dir_part,rel_empl,rmt_imag,for_acad,ind_rest,obs_rest,fec_desr,fec_hasr,fec_reso,num_reso,PRO_ESPE,ADI_USUA,FEC_FALL,PAG_EXTE,IND_DISC,POR_DISC,NUM_CASA,LOC_EXPE,LOC_NACI,LOC_RESI,PRE_CONA,NUM_CONA,COD_ZONA,COD_VIAS,NOM_VIAS,SUS_PATR,FAM_EMPR,NOM_FAMI,NOM_RECO,FEC_EXPE,CAS_CONT,PER_FILE,RAD_OCIU,ANO_MIXT,MES_MIXT,DIA_MIXT,VIN_MIXT,CAB_FAMI,ADJ_GUID,FEC_GRAD,FEC_CONA,IND_TAEX 
		FROM bi_emple 
		WHERE COD_EMPL=@COD_EMPL

	INSERT INTO NM_CONTR
	SELECT  
		cod_empr,@COD_EMPL_NEW,nro_cont,tip_cont,tip_remu,por_remu,man_turn,rot_turn,cod_turn,cod_gtur,tip_sala,fec_cont,fec_ingr,fec_venc,tip_rete,ind_sind,cod_carg,cod_esca,cod_cenp,cod_ccos,for_pago,mar_tarj,ind_acti,fec_nomb,res_nomb,fec_pose,res_pose,cod_mdej,res_deja,fec_deja,cod_tnom,cod_gpro,tip_pens,reg_cesa,fec_cesa,fec_vaca,fec_anti,sue_basi,fec_suel,sue_ante,con_fij1,fec_fij1,ant_fij1,con_fij2,fec_fij2,ant_fij2,con_fij3,fec_fij3,ant_fij3,cod_arbo,ide_arbo,cod_niv1,cod_niv2,cod_niv3,cod_niv4,cod_niv5,cod_niv6,cod_niv7,rmt_nive,obs_erva,act_usua,act_hora,act_esta,rmt_imag,cod_area,fol_cont,com_flex,val_comp,cod_frep,fec_reso,pen_tipo,cod_pens,pen_comp,est_pens,tip_coti,csr_pamp,RMT_PLAN,CAS_CONT,POR_RUAF,FEC_REVI,COD_CARE,DIA_CONF,MOD_PENS,OBS_ERV2,ARB_SUCU,ARB_CSUC,ARB_PROY,ARB_CPRO,ARB_AREA,ARB_CARE,FEC_NOVE,REG_SALA,SUS_PATR,TIP_VILA,TIP_CNFJ,EXN_NOCP,FEC_PPRU,FEC_NOTR,CLA_CATE,GAS_PERS,ADJ_GUID,COD_FACT,PAG_DOLA,CES_CONG,BEN_FLEX,SEN_JUDI
		FROM nm_contr
	WHERE COD_EMPL=@COD_EMPL;

	UPDATE nm_cuent SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_NOVSS SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_HICAR SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_ECSRI SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_vacac SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE bi_hvint SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_RCRET SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_diasn SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_incap SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_vacac SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_DISRF SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	DELETE NM_DISRF WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_AACUM SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_ausen SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_autol SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_prima SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_BASES SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_cesan SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_HCUEN SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE bi_edfor SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE bi_ednfo SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_prima SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_BASES SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE nm_cesan SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE NM_HCUEN SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE bi_edfor SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	UPDATE bi_ednfo SET COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	update nm_acumu set COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	update nm_preno set COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;
	update NM_PROPA set COD_EMPL=@COD_EMPL_NEW WHERE COD_EMPL=@COD_EMPL;

	DELETE NM_CONTR WHERE COD_EMPL=@COD_EMPL;
	DELETE BI_EMPLE WHERE COD_EMPL=@COD_EMPL;

