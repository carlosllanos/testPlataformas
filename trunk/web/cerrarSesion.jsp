<%-- 
    Document   : cerrarSesion
    Created on : 08-jun-2014, 22:07:25
    Author     : Mis Hijos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.invalidate();


%>
<jsp:forward page="login.jsp">
   <jsp:param name="cerrar" value="Se ha finalizado la sesion, por favor ingrese nuevamente o haga click en regresar para dirigirse al portal de bienvenida."/>
</jsp:forward>