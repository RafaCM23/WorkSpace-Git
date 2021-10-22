<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
</head>
<body>
<body>
		<jsp:useBean id="alumno" class="jacaranda.AlumnoBean" scope="session"/>
		<jsp:setProperty name="alumno" property="*"/>
		<h1>Estudiante</h1>
		<p>Nombre:
			<jsp:getProperty name="alumno" property="nombre"/>
		</p>
		
		<p>Apellido:
			<jsp:getProperty name="alumno" property="apellido"/>
		</p>
		<p>Edad:
			<jsp:getProperty name="alumno" property="edad"/>
		</p>
		<p>Curso:
			<jsp:getProperty name="alumno" property="curso"/>
		</p>
		<p>DNI:
			<jsp:getProperty name="alumno" property="dni"/>
		</p>
		<form action="colegio.jsp" method="POST">
		<input type="submit" value="Añadir al Colegio" id="boton">
		</form>
	</body>
</body>
</html>