<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/validacion.css" title="validacion" type="text/css">
<link rel="stylesheet" href="resources/css/links.css" title="links" type="text/css">
<link rel="stylesheet" href="resources/css/mensajes.css" type="text/css">
<link rel="stylesheet" href="resources/css/controles.css" type="text/css">
<link rel="stylesheet" href="resources/css/titulos.css" type="text/css">
<title>SIGEDU</title>
</head>
<body>
	<table>
		<tr>
			<td><img src="resources/img/logoConsultisoft.png" width="350" height="100" border="0"></td>
		</tr>
	</table>
	<hr>
	<h2 class="Titulo">Registro Nueva Asignatura</h2>
	<hr>
	
	<c:if test="${resultado==0}">
		<h3 class="MensajeExito">
	</c:if>
	<c:if test="${resultado!=0}">
		<h3 class="MensajeError">
	</c:if>
		${mensaje}
    </h3>
	<form:form method="post" action="addAsignatura" commandName="asignatura">

		<table width="500">
			<tr>
				<td width="100">Asignatura:</td>
				<td width="300"><form:errors path="str_curso" cssClass="error" />
								<form:input	path="str_curso" /></td>
			</tr>
			<tr>
				<td width="100">Fecha creaci&oacute;n:</td>
				<td width="300"><form:errors path="dte_fecha_creacion" cssClass="error" /> 
					<form:input type="date" name="fecha_creacion" path="dte_fecha_creacion" /></td>
			</tr>
			<tr>
				<td width="100">Fecha modificaci&oacute;n:</td>
				<td width="300"><form:errors path="dte_fecha_modificacion" cssClass="error" />
					<form:input type="date" name="fecha_modificacion" path="dte_fecha_modificacion" /></td>
			</tr>
			<tr>
				<td width="100">A�o: </td>
				<td width="300"><select name="listarAnho" >
					<option selected> Seleccione a�o</option>
					<option value="1">2014</option>
					<option value="2">2015</option>
					</select>
				</td>
			</tr>
			
		</table>
		<table>
			<tr>
				<td>
					<button type="reset" title="Limpiar">
						<img src="resources/img/Borrar.png" width="50" height="50" border="0">
					</button>
				</td>
				<td>
					<button type="submit" title="Grabar">
						<img src="resources/img/Grabar.png" width="50" height="50" border="0">
					</button>
				</td>
				
			</tr>
		</table>
		
	</form:form>
	
    <a href="listAsignatura" cssClass="Navegador"><img src="resources/img/alumno.jpg" width="50" height="50" border="0" />Ir a Mantenimiento Asignatura</a>
</body>
</html>