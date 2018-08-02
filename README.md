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

<h2>Planta</h2>

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
    <th>Grupo de prototipo</th>
    <th>Tipo contrato</th>
    <th>Sueldo Basico/th>
    <th>dentificación jefe</th>
    <th>Jefe Apellidos y Nombres</th>
    <th>Jefe Centro de costos</th>
  </tr>
  <tr>
    <td>1</td> 
    <td>0123</td>
    <td>Apellidos Nombres</td>
    <td>Cargo</td>
    <td>01/01/2015</td>
    <td>Gestion Humana</td>
    <td>Administrativo</td>
    <td>Ley 50</td>
    <td>Fijo</td>
    <td>1.000.000</td>
    <td>1234</td>
    <td>Apellidos y nombre Jefe</td>
    <td>Presidencia</td>
  </tr>
</table>

<h2>Nómina</h2>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/AcumuladoConsolidadoPrenomina.sql"><H4>AcumuladoConsolidadoPrenomina :</H4></a>
<span>pendiente por probar y documentar</span>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/1393.sql"><H4>1393 :</H4></a>
<span>pendiente por probar y documentar</span>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/BaseSalarialConGrupoPrototipo.sql"><H4>BaseSalarialConGrupoPrototipo :</H4></a>
<span>pendiente por probar y documentar</span>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/AcumuladosSegSocGPrototipo.sql"><H4>AcumuladosSegSocGPrototipo :</H4></a>
<span>pendiente por probar y documentar</span>


<h2>PROCEDIMIENTOS</h2>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/PrototipoActualizacionPlanta.sql"><H4>PrototipoActualizacionPlanta :</H4></a>
<span>pendiente por probar y documentar</span>
    
<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/PrototipoNumeroDeCagos.sql"><H4>PrototipoNumeroDeCagos :</H4></a>
<span>pendiente por probar y documentar</span>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/ActualizarRMTCargo.sql"><H4>ActualizarRMTCargo :</H4></a>
<span>pendiente por probar y documentar</span>

<h2>FUNCIONES</h2>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/FuncionValorFechaMaximoAcumuladosConcepto.sql"><H4>FuncionValorFechaMaximoAcumuladosConcepto :</H4></a>
<span>pendiente por probar y documentar</span>

<a href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/FuncionValorValorFechaActualAcumuladosConcepto.sql"><H4>FuncionValorValorFechaActualAcumuladosConcepto :</H4></a>
<span>pendiente por probar y documentar</span>

#html
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet">
    <title>Consultas Bases de datos Kactus</title>
    <style>
        th,
        td {
            text-align: center;
        }

        table {
            width: 100%;

        }
    </style>

</head>

<body>
    <div class="container">
        <!--introduccion-->
        <div>
            <div class="col-md-7 col-md-offset-5">
                <h1>SQL SERVER</h1>
            </div>
            <p>Sentencias diseñadas para ser ejecutadas en el motor de base de datos de SQL SERVER del esquema de Kactus con el fin de consultar o diseñar reportes los cuales ayuda a los usuarios a generar gran cantidad de información de una manera más rápida y fácil. Esto se divide en:
            </p>
            <div class="col-md-offset-1">
                <br>
                <li>Consultas</li>
                <li>Procedimientos</li>
                <li>Funciones</li>
            </div>
        </div>
        <br>
        <!--Consultas-->
        <div class="panel panel-info">
            <div class="panel-heading">
                <h2>Consultas</h2>
            </div>
            <!--Datos basicos-->
            <br>
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3>Datos Empleados</h3>
                </div>
                <br>
                <!--Casados sin conyugue-->
                <div>
                    <H4>Casado Sin Conyugue :</H4>

                    <p>Con este script puede generar un listado de los empleados activos que en el maestro de empleados (KBiEmple) se encuentra como casado o union libre y en el maestro de familiares (KBiFamil) no tiene registrado su conyugue.</p>
                    <br>
                    <div class="table-responsive">
                        <table>
                            <thead>
                                <tr>
                                    <th>Nombre Centro de Costo</th>
                                    <th>Tipo</th>
                                    <th>Identificacion</th>
                                    <th>Nombre Empleado</th>
                                    <th>Apellido Empleado</th>
                                    <th>Codigo Cargo</th>
                                    <th>Nombre Cargo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Gestion Humana</td>
                                    <td>Casado sin Conyugue registrados</td>
                                    <td>0</td>
                                    <td>Nombres empleado</td>
                                    <td>Apellidos empleado</td>
                                    <td>123</td>
                                    <td>Cargo</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/CasadoSinConyugue.sql" role="button">Ver Script</a>
                    </div>
                </div>
                <!--Empleados sin Foto-->
                <div>

                    <H4>Empleados sin Foto :</H4>

                    <p>Con este script puede generar un listado de los empleados activos que en el maestro de empleados (KBiEmple) no tiene foto.</p>
                    <div class="table-responsive">
                        <table>
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
                    </div>
                    <br>
                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/ConsultaFoto.sql" role="button">Ver Script</a>
                    </div>
                </div>
                <!--Datos Basicos-->
                <div>
                    <H4>Datos Basicos Empleados :</H4>
                    <p>Con este script puede generar un listado de los empleados activos con datos basicos.</p>
                    <div class="table-responsive">
                        <table>
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
                    </div>
                    <br>
                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/DatosBasicos.sql" role="button">Ver Script</a>
                    </div>
                </div>
                <!--Datos Laborales-->
                <div>

                    <H4>Datos Laborales:</H4>

                    <p>Con este script puede generar un listado de los empleados activos que no poseen referencias laborales en el programa hoajde vida externa (KBiHvExt)</p>
                    <br>
                    <div class="table-responsive">
                        <table>
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
                    </div>
                    <br>
                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/DatosLaborales.sql" role="button">Ver Script</a>
                    </div>
                    <br>
                </div>
            </div>
            <br>
            <!--Planta-->
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3>Planta</h3>
                </div>
                <br>
                <H4>PlataSobreContratos :</H4>
                <p>Con este script puede generar un listado de los empleados activos generando una planta basada en contratos (KNmContr)</p><br>
                <div class="table-responsive">
                    <table>
                        <tr>
                            <th>Codigo Empresa</th>
                            <th>identificacion</th>
                            <th>Apellidos y Nombre</th>
                            <th>Nombre Cargo</th>
                            <th>Fecha de Inicio</th>
                            <th>Nombre de centro de costo</th>
                            <th>Clase de nomina</th>
                            <th>Grupo de prototipo</th>
                            <th>Tipo contrato</th>
                            <th>Sueldo Basico/th>
                                <th>identificación jefe</th>
                                <th>Jefe Apellidos y Nombres</th>
                                <th>Jefe Centro de costos</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>0123</td>
                            <td>Apellidos Nombres</td>
                            <td>Cargo</td>
                            <td>01/01/2015</td>
                            <td>Gestion Humana</td>
                            <td>Administrativo</td>
                            <td>Ley 50</td>
                            <td>Fijo</td>
                            <td>1.000.000</td>
                            <td>1234</td>
                            <td>Apellidos y nombre Jefe</td>
                            <td>Presidencia</td>
                        </tr>
                    </table>
                </div>
                <br>
                <div class="col-md-offset-5">
                    <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/PlataSobreContratos.sql" role="button">Ver Script</a>
                </div>
                <br>
            </div>
            <br>
            <!--Nómina-->
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3>Nómina</h3>
                </div>
                <!--AcumuladoConsolidadoPrenomina-->
                <div>
                    <H4>Acumulado Consolidado desde Prenomina :</H4>

                    <p>pendiente por probar y documentar</p>

                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/AcumuladoConsolidadoPrenomina.sql" role="button">Ver Script</a>
                    </div>
                </div>
                <!--1393-->
                <div>
                    <H4>1393 :</H4>
                    <br>
                    <p>pendiente por probar y documentar</p>
                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/1393.sql" role="button">Ver Script</a>
                    </div>
                </div>
                <br>
                <!--BaseSalarialConGrupoPrototipo-->
                <div>
                    <H4>Base Salarial con Grupo Prototipo:</H4>
                    <br>
                    <p>pendiente por probar y documentar</p>
                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/BaseSalarialConGrupoPrototipo.sql" role="button">Ver Script</a>
                    </div>
                </div>
                <br>
                <!--AcumuladosSegSocGPrototipo-->
                <div>
                    <H4>Acumulados Seguridad Socicial por Grupo de Prototipo :</H4>
                    <br>
                    <p>pendiente por probar y documentar</p>
                    <br>
                    <div class="col-md-offset-5">
                        <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/AcumuladosSegSocGPrototipo.sql" role="button">Ver Script</a>
                    </div>
                    <br>
                </div>
            </div>
        </div>
        <!--Procedimientos-->
        <div class="panel panel-info">
            <div class="panel-heading">

                <h2>Procedimientos</h2>
            </div>
            <br>
            <H4>PrototipoActualizacionPlanta :</H4>
            <br>
            <p>pendiente por probar y documentar</p>
            <br>
            <div class="col-md-offset-5">
                <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/PrototipoActualizacionPlanta.sql" role="button">Ver Script</a>
            </div>
            <!--Prototipo Numero De Cagos-->
            <div>
                <H4>Prototipo Numero De Cagos :</H4>
                <br>
                <p>pendiente por probar y documentar</p>
                <br>
                <div class="col-md-offset-5">
                    <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/PrototipoNumeroDeCagos.sql" role="button">Ver Script</a>
                </div>
            </div>
            <br>
        </div>
        <br>
        <!--Update-->
        <div class="panel panel-info">
            <div class="panel-heading">
                <h2>Update</h2>
            </div>
            <!--ActualizarRMTCargo-->
            <div>
                <H4>Actualizar RMT Cargo :</H4>
                <br>
                <p>pendiente por probar y documentar</p>
                <br>
                <div class="col-md-offset-5">
                    <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/ActualizarRMTCargo.sql" role="button">Ver Script</a>
                </div>
            </div>
            <br>
        </div>
        <!--funciones-->
        <br>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h2>Funciones</h2>
            </div>
            <br>
            <!--Valor Fecha maxima Acumulados de Concepto-->
            <div>
                <H4>FuncionValorFechaMaximoAcumuladosConcepto :</H4>
                <br>
                <p>pendiente por probar y documentar</p>
                <br>
                <div class="col-md-offset-5">
                    <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/FuncionValorFechaMaximoAcumuladosConcepto.sql" role="button">Ver Script</a>
                </div>
            </div>
            <br>
            <!--Valor Fecha Actual Acumulados de Concepto-->
            <div>
                <H4>Valor Fecha Actual Acumulados de Concepto :</H4>
                <br>
                <p>pendiente por probar y documentar</p>
                <br>
                <div class="col-md-offset-5">
                    <a class="btn btn-success" target="_blank" href="https://github.com/alejozepol/ConsultasKtc/blob/master/SQL/FuncionValorValorFechaActualAcumuladosConcepto.sql" role="button">Ver Script</a>
                </div>
            </div>
            <br>
        </div>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript">
            var table = document.getElementsByTagName('table')
            console.log(table)

            for (let i = 0; i < table.length; i++) {
                table[i].classList.add('table-bordered')
            };
            console.log(table)
        </script>
    </div>
</body>

</html>
