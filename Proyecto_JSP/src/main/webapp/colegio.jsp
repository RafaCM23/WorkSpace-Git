<%@page import="jacaranda.AlumnoBean"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Colegio</title>
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
		
		<jsp:useBean id="colegio" class="jacaranda.Colegio" scope="session"/>
		<jsp:setProperty name="colegio" property="*"/>
		<div class="contenedor">
		<h1>Colegio</h1>
		<h3>Numero de alumnos: <%= colegio.numeroAlumnos() %> </h3>
		<p>Nombre:
			<jsp:getProperty name="colegio" property="nombre"/>
		</p>
		<%	StringBuilder alumnos= new StringBuilder();
		for(AlumnoBean al : colegio.listaAlumnos){
			alumnos.append((al.toString()));
		}
		String resultado=alumnos.toString();%>
		<pre id="parrafo">Alumnos:
		<%= resultado %>
		</pre>
		
		
		<input type="button" value="Crear nuevo Alumno" id="crearAlumno">
		</div>
		<script src="colegio.js"></script>
		
	</body>

</html>