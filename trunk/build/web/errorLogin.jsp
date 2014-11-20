<%-- 
    Document   : errorLogin
    Created on : 06-jun-2014, 23:19:33
    Author     : Mis Hijos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:forward page="login.jsp">
   <jsp:param name="error" value="Usuario y/o clave
              incorrectos.Vuelve a intentarlo."/>
</jsp:forward>