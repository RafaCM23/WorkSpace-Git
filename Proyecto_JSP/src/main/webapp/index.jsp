<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Primer Proyecto</title>
</head>
<link href="css/alumnos.css" rel="stylesheet" type="text/css">
<body>

	
	<div class="contenedor">
        <h1>Creacion de Alumnos</h1>
        <div class="seccion">
    <form action="resultado.jsp" method="POST">
        <label for="nombre">Nombre:</label>       <input type="text" name="nombre" id="nombre"> <br>
        <hr>
        <label for="apellido">Apellido:</label>        <input type="text" name="apellido" id="apellido"> <br>
        <hr>
        <label for="edad">Edad:</label>        <input type="number" name="edad" id="edad" min="3" max="18"> <br>
        <hr>
        <label for="curso">Curso:</label>        <input type="text" name="curso" id="curso" > <br>
        <hr>
        <label for="dni">DNI:</label>        <input type="text" name="dni" id="dni"> <br>
        <hr>
        
        <input type="submit" value="enviar" id="boton">
        
        <% 
        %>
    </form>
    </div>
</div>

</body>
</html>