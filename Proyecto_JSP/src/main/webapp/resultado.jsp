<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
</head>
<style>
.contenedor{
    height: 1000px;
    width: 700px;
    align-items: center;
    margin-top: 5%;
    font-size: x-large;
    float: left;
    margin-left: 10%;
}
h1{
	color:#5B7B7A;}
</style>
<body>
		<jsp:useBean id="alumno" class="jacaranda.AlumnoBean" scope="page"/>
		<jsp:setProperty name="alumno" property="*"/>
		<div class="contenedor">
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
		<jsp:useBean id="colegio" class="jacaranda.Colegio" scope="session"/>
		<jsp:setProperty name="colegio" property="nombre" value="Jacaranda"/>
		<% colegio.listaAlumnos.add(alumno);%>
		<input type="submit" value="Añadir al Colegio" id="boton">
		</form>
		</div>
	
</body>
</html>