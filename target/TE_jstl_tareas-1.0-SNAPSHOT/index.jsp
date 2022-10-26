
<%@page import="com.emergentes.tarea"%>
<%@page import="com.emergentes.GestorTareas"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (session.getAttribute("agenda") == null){
    GestorTareas objeto1 = new GestorTareas();
   
  objeto1.insertarTarea(new tarea(1,"inicio de claces emergentes ll 06:30 pm","Alta"));
  objeto1.insertarTarea(new tarea(2,"estudiar pra ecamen de emergentes ll","Alta"));
  objeto1.insertarTarea(new tarea(3,"reunion asanblea de carrera ","Baja"));
   session.setAttribute("agenda", objeto1);
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP - Tareas</title>
    </head>
    
    <body>
        <h1>LISTADO DE TAREAS MT!</h1>
        <<a href="Controller?op=nuevo">NUEVO</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>TAREAS</th>
                <th>PRIORIDAD</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}" >
                <tr>
                    <td>${item.id}</td>
                    <td>${item.tarea}</td>
                    <td>${item.prioridad}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}">MODIFICAR </a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}">ELIMINAR </a></td>
                </tr>    
            </c:forEach>
        </table>
    </body>
</html>
