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
input[type='button']{
  padding: 0 16px;
  border-radius: 2px;
  background-color: #018786;
  box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2),
    0 2px 2px 0 rgba(0, 0, 0, 0.14),
    0 1px 5px 0 rgba(0, 0, 0, 0.12);
  color: #fff;
  transition: background-color 15ms linear,
    box-shadow 280ms cubic-bezier(0.4, 0, 0.2, 1);

  height: 36px;
  line-height: 2.25rem;
  font-family: Roboto, sans-serif;
  font-size: 0.875rem;
  font-weight: 500;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  margin-left: 20em;
  margin-top: 2em;
}
</style>
<body>
		
		<jsp:useBean id="colegio" class="jacaranda.Colegio" scope="session"/>
		<jsp:setProperty name="colegio" property="*"/>
		<div class="contenedor">
		<h1>Colegio</h1>
		<h3>Numero de alumnos: <%= colegio.numeroAlumnos() %> </h3>
		<% if(colegio.numeroAlumnos()==0){
			
		 %><jsp:forward page = "error.jsp" />
		 <%} %>
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