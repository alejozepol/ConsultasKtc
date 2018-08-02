CREATE FUNCTION [dbo].[ValorFechaActualAcumuladosConcepto] (@empleado numeric, @contrato char, @concepto smallint)
returns decimal
BEGIN
declare @valor decimal
	select @valor = sum(val_acum) from nm_acumu where cod_empl=@empleado and nro_cont = @contrato
	and cod_conc in (@concepto) 
	and year(fec_acum) = year(getdate()) and month(fec_acum) =  month(getdate())

RETURN @valor

END