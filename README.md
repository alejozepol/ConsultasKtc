# ConsultasKCT

<h2>SQL SERVER</h2>

<h3>Datos Empleados</h3>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/CasadoSinConyugue.sql"><H4>CasadoSinConyugue :</H4></a>
<span>Con este script puede generar un listado de los empleados activos que en el maestro de empleados (KBiEmple) 
    se encuentra como casado o union libre y en el maestro de familiares (KBiFamil) no tiene registrado su conyugue.</span>

<table style="width:100%">
  <tr>
    <th>Nombre Centro de Costo</th>
    <th>Tipo</th> 
    <th>Identificacion</th>
    <th>Nombre Empleado</th>
    <th>Apellido Empleado</th>
    <th>Codigo Cargo</th>
    <th>Nombre Cargo</th>
  </tr>
  <tr>
    <td>Gestion Humana</td>
    <td>Casado sin Conyugue registrados</td> 
    <td>0</td>
    <td>Nombres</td>
    <td>Apellidos</td>
    <td>123</td>
    <td>Cargo</td>
  </tr>
</table>


<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/ConsultaFoto.sql"><H4>ConsultaFoto :</H4></a>
<span>Con este script puede generar un listado de los empleados activos que en el maestro de empleados (KBiEmple) 
no tiene foto.</span>

<table style="width:100%">
  <tr>
    <th>identificacion</th>
    <th>Nombre Empleado</th>
    <th>Apellido Empleado</th>
    <th>Codigo centro de costo</th>     
    <th>Nombre de centro de costo</th>     
    <th>Codigo Cargo</th>
    <th>Nombre Cargo</th>
  </tr>
  <tr>
    <td>0</td>
    <td>Nombres</td>
    <td>Apellidos</td>
    <td>345</td> 
    <td>Gestion Humana</td>
    <td>123</td>
    <td>Cargo</td>
  </tr>
</table>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/DatosBasicos.sql"><H4>DatosBasicos :</H4></a>
<span>Con este script puede generar un listado de los empleados activos con datos basicos.</span>

<table style="width:100%">
  <tr>
    <th>Codigo centro de costo</th>     
    <th>Nombre de centro de costo</th>     
    <th>identificacion</th>
    <th>Apellido Empleado</th>
    <th>Nombre Empleado</th>
    <th>Codigo Cargo</th>
    <th>Nombre Cargo</th>
    <th>Fecha Ingreso</th>
  </tr>
  <tr>
    <td>345</td> 
    <td>Gestion Humana</td>
    <td>0</td>
    <td>Apellidos</td>
    <td>Nombres</td>
    <td>123</td>
    <td>Cargo</td>
    <td>01/01/2015</td>
  </tr>
</table>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/DatosLaborales.sql"><H4>DatosLaborales :</H4></a>
<span>Con este script puede generar un listado de los empleados activos que no poseen 
	referencias laborales en el programa hoajde  vida externa (KBiHvExt)</span>

<table style="width:100%">
  <tr>
    <th>Codigo centro de costo</th>     
    <th>Nombre de centro de costo</th>     
    <th>Tipo</th>
    <th>identificacion</th>
    <th>Nombre Empleado</th>
    <th>Apellido Empleado</th>
    <th>Codigo Cargo</th>
    <th>Nombre Cargo</th>
  </tr>
  <tr>
    <td>345</td> 
    <td>Gestion Humana</td>
    <td>Referencias laborales incompletas</td>
    <td>0</td>
    <td>Nombres</td>
    <td>Apellidos</td>
    <td>123</td>
    <td>Cargo</td>
  </tr>
</table>

<h3>Planta</h3>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/PlataSobreContratos.sql"><H4>PlataSobreContratos :</H4></a>
<span>Con este script puede generar un listado de los empleados activos generando una planta
	basada en contratos (KNmContr)</span>

<table style="width:100%">
  <tr>
    <th>Codigo Empresa</th>
    <th>identificacion</th>
    <th>Apellidos y Nombre</th>
    <th>Nombre Cargo</th>
    <th>Fecha de Inicio</th>
    <th>Nombre de centro de costo</th>     
    <th>Clase de nomina</th>     
    <th>Tipo contrato</th>
    <th>Sueldo Basico/th>
    <th>dentificación jefe</th>
    <th>Jefe Apellidos y Nombres</th>
    <th>Jefe Centro de costos</th>
  </tr>
  <tr>
    <td>1</td> 
    <td>0</td>
    <td>Apellidos Nombres</td>
    <td>Cargo</td>
    <td>01/01/2015</td>
    <td>Gestion Humana</td>
    <td>Administrativo</td>
    <td>Fijo</td>
    <td>1.000.000</td>
    <td>1</td>
    <td>Apellidos y nombre Jefe</td>
    <td>Presidencia</td>
  </tr>
</table>
