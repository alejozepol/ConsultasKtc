Create PROCEDURE [dbo].[SP_ACT_AC_PLANT]
@p_cod_empr smallint,
@p_num_empl int output    

AS

BEGIN
-- 
DECLARE
--	GENERALES
  @v_num_erro DECIMAL(5,0),       @v_pro_error VARCHAR(250),        @v_fec_error DATETIME,
  @v_txt_error VARCHAR(250),      @v_ide_regi VARCHAR(35),          @v_sec_regi DECIMAL(10),
  @v_fec_regi DATETIME,           @v_est_regi VARCHAR(1),  	    @p_est_proc  char(1),
  @v_cod_empr SMALLINT ,          @v_rmt_plan DECIMAL(10),          @v_cod_empl DECIMAL(13),
  @v_cod_carg CHAR(6),            @v_cod_esca CHAR(5),              @v_tip_mano CHAR(1),
  @v_tip_carg CHAR(3),            @v_cod_ccos SMALLINT ,            @v_cod_arbo SMALLINT ,
  @v_ide_arbo CHAR(2),            @v_cod_niv1 DECIMAL(10),          @v_cod_niv2 DECIMAL(10),
  @v_cod_niv3 DECIMAL(10),        @v_cod_niv4 DECIMAL(10),          @v_cod_niv5 DECIMAL(10),
  @v_cod_niv6 DECIMAL(10),        @v_cod_niv7 DECIMAL(10),          @v_rmt_nive DECIMAL(10),
  @v_obs_erva CHAR(120),          @v_act_usua CHAR(8),              @v_act_hora DATETIME ,
  @v_act_esta CHAR(1),            @v_cod_rtem DECIMAL(13),          @v_nom_prop VARCHAR(30),
  @v_fun_carg varchar(1000)

 ----------------------
 -- asignacion valores globales
	SELECT    @v_fec_regi = Getdate(),
              @v_est_regi = 'N',
		      @v_act_esta = 'A',
 			  @v_rmt_plan = 0,
			  @p_num_empl = 0,
			  @v_tip_carg = 'ASI',---EL TIPO DE CARGO LO CAMBIAS COMO LO NECESITAS
			  @v_tip_mano = 'G' 
delete
from ac_plant
where cod_empr = @p_cod_empr
 

	--- Cursor de la tabla fuente inicial
	DECLARE Cur_planta CURSOR FOR
	SELECT	a.Cod_empl,a.Cod_carg,a.Cod_esca,
		    a.Cod_ccos,a.Cod_arbo,a.Ide_arbo,a.Cod_niv1,a.Cod_niv2,
		    a.Cod_niv3,a.Cod_niv4,a.Cod_niv5,a.Cod_niv6,a.Cod_niv7,a.Rmt_nive,
			a.Obs_erva,a.Act_usua,a.Act_hora,a.Act_esta
			FROM nm_contr a
    WHERE  a.cod_empr = @p_cod_empr and a.ind_acti = 'A'
    AND not exists ( select * from ac_plant b
                  where 
				   a.cod_empr=b.cod_empr and
				   a.cod_empl=b.cod_empl)
		
				--
	OPEN Cur_planta

	FETCH NEXT FROM Cur_planta 	INTO  @v_cod_empl,@v_cod_carg,@v_cod_esca,@v_cod_ccos,@v_cod_arbo,@v_ide_arbo,@v_cod_niv1,@v_cod_niv2,@v_cod_niv3,@v_cod_niv4,@v_cod_niv5,@v_cod_niv6,@v_cod_niv7,@v_rmt_nive,@v_obs_erva,@v_act_usua,@v_act_hora,@v_act_esta
	WHILE (@@fetch_status <> -1)
	BEGIN
	      IF (@@fetch_status <> -2)
		  BEGIN
      		  SELECT @v_act_hora = Getdate()      
              --if @v_cod_esca = 5 
                -- select @v_tip_carg = 'DE'
             -- else
                -- select @v_tip_carg = 'PL'  
				 
		     	
	
			  INSERT INTO ac_plant
						( Cod_empr,Rmt_plan,Cod_empl,Cod_carg,Cod_esca,Tip_mano,
	                     Tip_carg,Cod_ccos,Cod_arbo,Ide_arbo,Cod_niv1,Cod_niv2,
			            Cod_niv3,Cod_niv4,Cod_niv5,Cod_niv6,Cod_niv7,Rmt_nive,
			            Obs_erva,Act_usua,Act_hora,Act_esta,Cod_rtem)
			  VALUES
						 (@p_cod_empr,@v_rmt_plan,@v_cod_empl,@v_cod_carg,@v_cod_esca,@v_tip_mano,
			            @v_tip_carg,@v_cod_ccos,@v_cod_arbo,@v_ide_arbo,@v_cod_niv1,@v_cod_niv2,
			            @v_cod_niv3,@v_cod_niv4,@v_cod_niv5,@v_cod_niv6,@v_cod_niv7,@v_rmt_nive,
			            @v_obs_erva,@v_act_usua,@v_act_hora,@v_act_esta,@v_cod_rtem);         
         
                  
      	   END 				
           select 	@p_num_empl  = @p_num_empl + 1	
	       FETCH NEXT FROM Cur_planta INTO  @v_cod_empl,@v_cod_carg,@v_cod_esca,@v_cod_ccos,@v_cod_arbo,@v_ide_arbo,@v_cod_niv1,@v_cod_niv2,
	            @v_cod_niv3,@v_cod_niv4,@v_cod_niv5,@v_cod_niv6,@v_cod_niv7,@v_rmt_nive,@v_obs_erva,@v_act_usua,@v_act_hora,@v_act_esta

	END						--
	CLOSE Cur_planta
	DEALLOCATE Cur_planta
end
