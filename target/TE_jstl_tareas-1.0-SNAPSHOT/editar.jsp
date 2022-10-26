
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
          <c:if test="${requestScope.op == 'nuevo'}" var="res" scope="request" >
              REGUISTRO DE 
          </c:if>
           <c:if test="${requestScope.op == 'modificar'}" var="res" scope="request" >
               MODIFICAR
          </c:if>
            TAREA
        </h1>
        <jsp:useBean id="miTarea" scope="request" class="com.emergentes.tarea"  />
        <form action="Controller"  method="post">
            <table>
                <tr>
                   <td>ID</td>
                   <td><input type="text" name="id"
                              value="<jsp:getProperty name="miTarea" property="id"/>" />
                        
                    </td>
                </tr>
                 <tr>
                   <td>TAREA</td>
                   <td><input type="text" name="tarea"
                              value="<jsp:getProperty name="miTarea" property="tarea"/>" />   
                    </td>
                </tr>
                <tr>
                    <td>PRIORIDAD</td>
                    <td><
                       <select name="prioridad">
                           <option value="Alta"
                                   <c:if test="${mitarea.prioridad== 'Alta'}"
                                         var="res" scope="request">
                                       selected
                                   </c:if>
                                   >Alta</option>
                           <option value="Media"
                                   <c:if test="${mitarea.prioridad == 'Media'}"
                                         var="res" scope="request">
                                       selected
                                   </c:if>
                                   >Media</option>
                           <option value="Baja"
                                    <c:if test="${mitarea.prioridad == 'Baja'}"
                                         var="res" scope="request">
                                       selected
                                   </c:if>
                                   >Baja</option>
                              </select>         
                    </td>
                </tr>
                 <tr>
                    <td>
                        <input type="hidden" name="opg" value="${requestScope.op}"/>
                        <input type="hidden" name="op" value="grabar" />
                    </td>
                    <td><input type="submit" value="ENVIAR"</td>
                </tr>
                </table>
        </form>
   
    </body>
</html>
