create PROCEDURE [dbo].[SP_ACT_NUM_BI_CARGO]
@PSiCodEmpr    Smallint     -- C¢digo de Empresa
AS

BEGIN
-- 
DECLARE
--    GENERALES
@v_cod_carg char(6),
@v_num_carg decimal(10),
@v_num_ocup decimal(10)
-- 
 BEGIN TRY

    --- Cursor de la tabla fuente inicial
    DECLARE cur_cargo CURSOR FOR
        SELECT  distinct cod_carg
            FROM ac_plant
             where cod_empr= @PSiCodEmpr 
            
    OPEN cur_cargo

    FETCH NEXT FROM cur_cargo
        INTO @v_cod_carg
-- 
    WHILE (@@fetch_status <> -1)
     BEGIN
     IF (@@fetch_status <> -2)
             --
            BEGIN
         
         select @v_num_carg = 0, @v_num_ocup = 0
                  
         select @v_num_carg = count(1)
         from   ac_plant    where cod_empr=@PSiCodEmpr and cod_carg = @v_cod_carg
         
         select @v_num_ocup = count(1)
         from   ac_plant    where cod_empr=@PSiCodEmpr and cod_carg = @v_cod_carg and cod_empl <> 0

            update bi_cargo
                set num_carg = @v_num_carg,
                num_ocup = @v_num_ocup  where cod_empr=@PSiCodEmpr and cod_carg = @v_cod_carg;
     
        END
                    --
     FETCH NEXT FROM cur_cargo
     INTO @v_cod_carg

     END
                        --
    CLOSE cur_cargo
    DEALLOCATE cur_cargo

 END TRY
 --

BEGIN CATCH
    SELECT getdate()
         
 END CATCH

END