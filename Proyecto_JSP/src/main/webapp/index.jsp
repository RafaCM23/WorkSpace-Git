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

	<% Colegio nuevo = new Colegio(); %>
	<div class="contenedor">
        <h1>Creacion de Alumnos</h1>
        <div class="seccion">
    <form>
        <label for="nombre">Nombre:</label>       <input type="text" name="nombre" id="nombre"> <br>
        <hr>
        <label for="apellido">Apellido:</label>        <input type="text" name="apellido" id="apellido"> <br>
        <hr>
        <label for="edad">Edad:</label>        <input type="number" name="edad" id="fechanac" min="3" max="18"> <br>
        <hr>
        <label for="curso">Curso:</label>        <input type="text" name="curso" id="curso" > <br>
        <hr>
        <label for="dni">DNI:</label>        <input type="text" name="dni" id="dni"> <br>
        <hr>
        
        <input type="button" value="Registrar Alumno" id="boton">
        
        <% //Validación formulario
        	ArrayList<String> errorMsgs = new ArrayList<String>();
        
        	String nombre= request.getParameter("nombre");
      		String apellido= request.getParameter("apellido");
      		Integer edad = Integer.parseInt(request.getParameter("edad"));
      		String curso = request.getParameter("curso");
      		String dni = request.getParameter("dni");
      		
      		
      		
      		
      		if((nombre.isEmpty()) || nombre.length()<3){
      			errorMsgs.add("El nombre no es correcto");  } 
      		if((apellido.isEmpty()) || apellido.length()<3){
      			errorMsgs.add("El apellido no es correcto");  } 
      		if(edad<3 || edad>80){
      			errorMsgs.add("El apellido no es correcto");
      		}
      		if(true){
      			
      		}
      		
      		String regexpCurso ="([1-4]º(ESO))|([1-2]º(BACH|DAW))";
			//to uppercase
        %>
    </form>
    </div>
</div>
</body>
</html>