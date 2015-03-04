<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/titulos.css" type="text/css">
<link rel="stylesheet" href="resources/css/menu_style.css" type="text/css">

<script language="JavaScript" type="text/javascript">
function editar(codigo){
	location.replace("editDcn?codigo="+codigo);
	//alert("hola");
}
</script>
<title>SIGEDU</title>
</head>

<body>
	<table width="1600" align="center">
		<tr>
			<td ><img src="resources/img/logoConsultisoft.png" width="350" height="100" border="0"></td>
		</tr>
	</table>	
	<hr width="1600">
	
	<h1 class="Titulo" align="center" width="1400">Datos del Dise�o Curricular Nacional</h1>
	<hr width="1600">
	
	<table width="1600" align="center">
	<tr>
		<td>
			<table width="250"  >
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
								<li><a href="#"></>Dise�o Curricular</a></li>
								<li><a href="#"></>Plan Curricular</a></li>
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
			<div id="divView">
			<table width="600" align="center">
				<tr>
					<td width="200">C&oacute;digo:</td>
					<td width="400">${dcn.codigo}</td>
				</tr>
				<tr>
					<td width="200">Nombre DCN:</td>
					<td width="400">${dcn.str_dcn}</td>
				</tr>
				<tr>
					<td width="200">Fecha Inicio Vigencia:</td>
					<td width="400">${dcn.dte_fecha_inicio_vig}</td>
				</tr>
				<tr>
					<td width="200">Fecha Fin Vigencia:</td>
					<td width="400">${dcn.dte_fecha_fin_vig}</td>
				</tr>
				<tr>
					<td width="200">Fecha Creaci&oacute;n:</td>
					<td width="400">${dcn.dte_fecha_creacion}</td>
				</tr>
				<tr>
					<td width="200">Fecha Modificaci&oacute;n:</td>
					<td width="400">${dcn.dte_fecha_modificacion}</td>
				</tr>
				<tr>
					<td width="200">Estado:</td>
					<td width="400">					
						<c:if test="${dcn.int_idestado==1}">Activo</c:if>
						<c:if test="${dcn.int_idestado==2}">Inactivo</c:if>
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
					</td>
					<td>
						<button title="Editar" onclick="javascript:editar('${dcn.codigo}')">
							<img src="resources/img/Editar.png" width="50" height="50" border="0">
						</button>
					</td>								
				</tr>			
			</table>
			</div>
		</td>
	</tr>
	</table>
		
	<br>
	<hr width="1600">
	<br>
	<table width="1600" align="center">
	<tr>
		<td>
			<a href="listDcn" cssClass="Navegador"><img src="resources/img/colegio.jpg" width="50" height="50" border="0" />Ir a Mantenimiento DCN</a>		
		</td>
	</tr>
	</table>
	
</body>
</html>