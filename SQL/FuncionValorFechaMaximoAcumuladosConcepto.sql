CREATE FUNCTION [dbo].[ValorFechaMaximoAcumuladosConcepto] (@empleado numeric, @contrato char, @concepto smallint)
returns decimal
BEGIN
declare @maxFecAumu datetime
declare @valor decimal
select @maxFecAumu = max(fec_acum) from nm_acumu where cod_empl=@empleado and nro_cont = @contrato;
	select @valor = sum(val_acum) from nm_acumu where cod_empl=@empleado and nro_cont = @contrato
	and cod_conc in (@concepto) 
	and year(fec_acum) = year(@maxFecAumu) and month(fec_acum) =  month(@maxFecAumu)

RETURN @valor

END