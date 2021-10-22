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
<body>
<body>
		<jsp:useBean id="alumno" class="jacaranda.AlumnoBean" scope="session"/>
		<jsp:setProperty name="alumno" property="*"/>
		<jsp:useBean id="colegio" class="jacaranda.Colegio" scope="session"/>
		<jsp:setProperty name="colegio" property="nombre" value="Jacaranda"/>
		<% colegio.listaAlumnos.add(alumno); %>
		<h1>Colegio</h1>
		<p>Nombre:
			<jsp:getProperty name="colegio" property="nombre"/>
		</p>
		<%
		StringBuilder alumnos= new StringBuilder();
		for(AlumnoBean al : colegio.listaAlumnos){
			alumnos.append(al.toString()+"\n");
		}
		String resultado=alumnos.toString();
		%>
		<p>Alumnos:<br>
			<%= resultado %>
		</p>
		
		<input type="button" value="Crear nuevo Alumno">
		<script src="colegio.js"></script>
		
	</body>
</body>
</html>