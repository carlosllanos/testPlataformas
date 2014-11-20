<%-- 
    Document   : Admin
    Created on : 06-jun-2014, 22:27:44
    Author     : Mis Hijos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
 
    String cod = (String) session.getAttribute("idvendedor");
    String nombre = (String) session.getAttribute("nombre");
    String apellido =  (String) session.getAttribute("apellido");
    String email =  (String) session.getAttribute("email");
    String tel =  (String) session.getAttribute("tel");
    String login =  (String) session.getAttribute("login");
           
    
    
    
%>    

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
       <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login " />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />

		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="menu2/CSS3 Menu_files/css3menu1/style.css" type="text/css" />
        <style type="text/css">._css3m{display:none}</style>
        <title>Administrador</title>
    </head>
    <body>
          <div class="container">
        <header>
            <h1>Bienvenido Administrador, <%=nombre%></h1>	
        </header>
       <br>
           <br>
        <section>
      
           
      <ul id="css3menu1" class="topmenu">
<input type="checkbox" id="css3menu-switcher" class="switchbox"><label onclick="" class="switch" for="css3menu-switcher"></label>	
        <li class="topfirst"><a href="Admin.jsp" style="width:91px;height:32px;line-height:32px;"><img src="menu2/CSS3 Menu_files/css3menu1/blue_circle - home.png" alt=""/>Inicio</a></li>
	<li class="topmenu"><a href="RegistrarVendedores.jsp" style="height:32px;line-height:32px;"><img src="menu2/CSS3 Menu_files/css3menu1/blue_circle - pen.png" alt=""/>Registrar Vendedores</a></li>
	<li class="topmenu"><a href="RegistrarProductos.jsp" style="width:172px;height:32px;line-height:32px;"><img src="menu2/CSS3 Menu_files/css3menu1/blue_circle - calc.png" alt=""/>Registrar Productos</a></li>
	<li class="topmenu"><a href="ListarVendedores.jsp" style="width:163px;height:32px;line-height:32px;"><img src="menu2/CSS3 Menu_files/css3menu1/blue_circle - document spreadsheet.png" alt=""/>Listar Vendedores</a></li>
	<li class="toplast"><a href="cerrarSesion.jsp" style="width:136px;height:32px;line-height:32px;"><img src="menu2/CSS3 Menu_files/css3menu1/blue_circle - shutdown.png" alt=""/>Cerrar Sesion</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">html menu generator</a> by Css3Menu.com</p>
       
            </section>
         </div>
    </body>
</html>
