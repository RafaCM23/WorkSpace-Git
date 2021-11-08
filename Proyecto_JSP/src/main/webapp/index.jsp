<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Creacion de Alumnos</title>
</head>
<link href="css/alumnos.css" rel="stylesheet" type="text/css">
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
<body>

	<!-- En esta pagina  tenemos un formulario con todos los datos del alumno-->
	<div class="contenedor">
        <h1>Creacion de Alumnos</h1>
        <div class="seccion">
    <form action="resultado.jsp" method="POST">
        <label for="nombre">Nombre:</label>       <input type="text" name="nombre" id="nombre"> <br>
        <hr>
        <label for="apellido">Apellido:</label>        <input type="text" name="apellido" id="apellido"> <br>
        <hr>
        <label for="edad">Edad:</label>        <input type="number" name="edad" id="edad" min="3" max="50"> <br>
        <hr>
        <label for="curso">Curso:</label>        <input type="text" name="curso" id="curso" > <br>
        <hr>
        <label for="dni">DNI:</label>        <input type="text" name="dni" id="dni"> <br>
        <hr>
        <!-- Con submit enviamos los datos a la siguiente pagina (resultado.jsp) -->
        <input type="submit" value="enviar" id="boton">
        
        <% 
        %>
    </form>
    </div>
</div>

</body>
</html>