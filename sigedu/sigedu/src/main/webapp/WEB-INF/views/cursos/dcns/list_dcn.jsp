<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>

<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/displayTag.css" title="displayTag" type="text/css">
<link rel="stylesheet" href="resources/css/mensajes.css" type="text/css">
<link rel="stylesheet" href="resources/css/titulos.css" type="text/css">
<link rel="stylesheet" href="resources/css/menu_style.css" type="text/css">
<script language="JavaScript" type="text/javascript" src="resources/js/funciones.js"></script>

<title>SIGEDU</title>
</head>
<body>
	<table width="1600" align="center">
		<tr>
			<td
			><img src="resources/img/logoConsultisoft.png" width="350" height="100" border="0"></td>
		</tr>
	</table>	
	<hr width="1630">
	
	<h1 class="Titulo" align="center" width="1400">Mantenimiento de Dise�o Curricular Nacional</h1>
	
	<hr width="1630">
	
	<table width="1600" align="center">
	<tr>
		<td>
			<table width="200"  >
			<tr >
				<td >
					<ul class="menu">
						<li><a href="#">Administrativo</a>
							<ul>
								<li><a href="#"></>Asistencia de alumno</a></li>
								<li><a href="#"></>Cuaderno de control</a></li>
								<li><a href="#"></>Docentes</a></li>
							</ul>
						</li>
						<li><a href="#">Cursos</a>
							<ul>
								<li><a href="listColegio"></>Colegio</a></li>
								<li><a href="listIe"></>Instituci&oacute;n Educativa</a></li>
								<li><a href="listDcn"></>Dise�o Curricular Nacional</a></li>
								<li><a href="listPlc"></>Plan Curricular</a></li>
								<li><a href="#"></>Apertura IE</a></li>
								<li><a href="#"></>Apertura Per&iacute;odo Lectivo</a></li>
							</ul>
						</li>
						<li><a href="#">Matr&iacute;cula</a>
							<ul>
								<li><a href="#"></>Alumnos</a></li>
								<li><a href="#"></>Aulas</a></li>
								<li><a href="#"></>Matr&iacute;cula</a></li>
								<li><a href="#"></>N�mina de Alumnos matriculados</a></li>
							</ul>
						</li>
						<li><a href="#">Notas</a>
							<ul>
								<li><a href="#"></>Notas de alumnos</a></li>
								<li><a href="#"></>Acta de evaluaciones</a></li>
								<li><a href="#"></>Record de notas</a></li>
								<li><a href="#"></>Libreta de notas</a></li>
							</ul>
						</li>
						<li><a href="#">Pagos</a>
							<ul>
								<li><a href="#"></>Pensi&oacute;n del alumno</a></li>
								<li><a href="#"></>Alumnos morosos</a></li>
								<li><a href="#"></>Alertas de pagos</a></li>
							</ul>
						</li>
						<li><a href="#">Reportes</a>
							<ul>
								<li><a href="#"></>Reporte de alumnos</a></li>
								<li><a href="#"></>Reporte de pagos</a></li>
							</ul>
						</li>
					</ul>	
				</td>
			</tr>
			</table>
		</td>
		<td>
			<table width="1300" align="center" >
			<tr>
				<td >
					<form:form action="findDcn" method="post" commandName="dcn" >
				            <br>
				            <table width="600" align="center" >
				            	<tr>
									<td width="250">Nombre DCN:</td>
									<td width="350"><form:input	path="str_dcn" size="50" /></td>
								</tr>
								<tr>
									<td width="250">Fecha inicio vigencia:<br></td>
									<td width="350"><form:errors path="dte_fecha_inicio_vig" cssClass="error" /><br> 
										<form:input type="date" name="dte_fecha_inicio_vig" path="dte_fecha_inicio_vig" /><br></td>
								</tr>
								<tr>
									<td width="250">Fecha fin vigencia:<br></td>
									<td width="350"><form:errors path="dte_fecha_fin_vig" cssClass="error" /><br>
										<form:input type="date" name="dte_fecha_fin_vig" path="dte_fecha_fin_vig" /><br></td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
								</tr>
								
								<tr>
									<td width="250">Modalidad: <br></td>
									<td width="350"><form:select path="parametro"  >
											<form:option value="" label="-- Seleccione --" /><br>
											<form:options items="${listModalidades}" itemValue="int_idparametro" itemLabel="str_parametro" /><br>
										</form:select>
									</td>
								</tr>
							</table>
							<br>
							<table align="center">	
				                <tr>
				                    <td>
				                    	<button type="submit" title="Buscar Dise�o Curricular Nacional">
				                            <img src="resources/img/Buscar.png" width="50" height="50" border="0">
				                        </button>
				                    </td>
				                    <td>
				                    	&nbsp;
				                    </td>
				                    <td> 
				                    	<a href="formDcn" cssClass="Navegador"><img src="resources/img/colegio.jpg" width="50" height="50" border="0" title="Registrar nuevo DCN"></a>
				                    </td>
				                </tr>
				            </table>
				        </form:form>
				        
				    <hr width="1300">
										
					<c:if test="${resultado==0}">
						<h3 class="MensajeExito">
					</c:if>
					<c:if test="${resultado!=0}">
						<h3 class="MensajeError">
					</c:if>
						${mensaje}
				    </h3>
				    <display:table 
						id="fila"
						export="true" 
						pagesize="10" 
						name="listDcns" 
						requestURI="listDcn">
				
						<display:setProperty name="export.excel.filename" value="Dcn.xls" />
						<display:setProperty name="export.pdf" value="false" />
						<display:setProperty name="export.xml" value="false" />
						<display:setProperty name="export.csv" value="false" /> 
				
						<display:column value="${fila_rowNum}"  title="Nro." />
						<display:column property="str_dcn"  title="DCN"  sortable="true" style="width:300px" />
						<display:column property="dte_fecha_inicio_vig"  title="Fec. Inicio Vig."  sortable="true" style="width:150px" />
						<display:column property="dte_fecha_fin_vig"  title="Fec. Fin Vig."  sortable="true" style="width:150x" />
						<display:column property="dte_fecha_creacion"  title="Fec. Creaci�n"  sortable="true" style="width:150px" />
						<display:column property="dte_fecha_modificacion"  title="Fec. Modificacion"  sortable="true" style="width:150px" />
						<display:column title="Estado">
							<c:if test="${fila.int_idestado==1}">Activo</c:if>
							<c:if test="${fila.int_idestado==2}">Inactivo</c:if>
						</display:column>
						<display:column media="html" title="Editar" style="text-align:center;">
							<a href="viewDcn?codigo=${fila.codigo}"><img src="resources/img/Buscar.png" alt="Edit" height="20" width="20"></a>
						</display:column>
						<display:column media="html" title="Ver" style="text-align:center;">
							<a href="editDcn?codigo=${fila.codigo}"><img src="resources/img/Editar.png" alt="Ver" height="20" width="20"></a>
						</display:column>
						<display:column media="html" title="Eliminar" style="text-align:center;">
							<a href="JavaScript:eliminar('${fila.str_dcn}', 'deleteDcn?codigo=${fila.codigo}')"><img src="resources/img/Borrar.png" alt="Ver" height="20" width="20"></a>
						</display:column>
					</display:table>
					<br>
					<table align="center">
					<tr>
						<td><a href="" ><img src="resources/img/Anterior.png" width="30" height="30" border="0" title="Anterior"></a></td>
						<td><a href="" ><img src="resources/img/Primero.png" width="30" height="30" border="0" title="Primero"></a></td>
						<td>1 de 4</td>
						<td><a href="" ><img src="resources/img/Ultimo.png" width="30" height="30" border="0" title="Ultimo"></a></td>
						<td><a href="" ><img src="resources/img/Siguiente.png" width="30" height="30" border="0" title="Siguiente"></a></td>
					</tr>
					</table>
				</td>
			</tr>
			</table>
		</td>
	</tr>
	</table>
	
	<br>
	<hr width="1600">
	<br>
	
	<table width="1600" align="center">
	<tr>
		<td>
			<a href="moduloCursos" cssClass="Navegador"><img src="resources/img/cursos.jpg" width="50" height="50" border="0" />Ir a Men&uacute; DCN</a>	
		</td>
	</tr>
	</table>	
</body>
</html>