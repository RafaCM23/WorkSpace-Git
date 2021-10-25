<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
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
input[type='submit']{
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
<body><!-- En esta pagina recibimos los datos del index.jsp y creamos e inicializamos el alumno -->
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
		<!-- Tambien creamos el colegio y le añadimos el alumno -->
		
		<input type="submit" value="Añadir al Colegio" id="enviar">
		<% colegio.listaAlumnos.add(alumno); %>
		</form>
		</div>
		<script src="resultado.js"></script>
	
</body>
</html>