<%-- 
    Document   : Vendedor
    Created on : 08-jun-2014, 23:43:43
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
	<link rel="stylesheet" href="menu3/CSS3 Menu_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
        <title>Vendedor</title>
    </head>
    <body>
          <div class="container">
        <header>
            <h1>Bienvenido Vendedor, <%=nombre%></h1>	
        </header>
       <br>
           <br>
        <section>
      
           
      <ul id="css3menu1" class="topmenu">
<input type="checkbox" id="css3menu-switcher" class="switchbox"><label onclick="" class="switch" for="css3menu-switcher"></label>
        <li class="topfirst"><a href="Vendedor.jsp" style="height:32px;line-height:32px;"><img src="menu3/CSS3 Menu_files/css3menu1/blue_circle - home.png" alt=""/>Inicio</a></li>
	<li class="topmenu"><a href="RegistrarCliente.jsp" style="height:32px;line-height:32px;"><img src="menu3/CSS3 Menu_files/css3menu1/blue_circle - users.png" alt=""/>Registrar Cliente</a></li>
	<li class="topmenu"><a href="Comprar.jsp" style="height:32px;line-height:32px;"><img src="menu3/CSS3 Menu_files/css3menu1/blue_circle - cart.png" alt=""/>Comprar</a></li>
        <li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><img src="menu3/CSS3 Menu_files/css3menu1/blue_circle - document text.png" alt=""/>Listar Productos</a></li>
        <li class="topmenu"><a href="ListarClientes.jsp" style="height:32px;line-height:32px;"><img src="menu3/CSS3 Menu_files/css3menu1/blue_circle - document spreadsheet.png" alt=""/>Listar Clientes</a></li>
	
        <li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="menu3/CSS3 Menu_files/css3menu1/blue_circle - stats.png" alt=""/>Reportes</span></a>
	
            <ul>
		<li><a href="#">Productos mas vendidos</a></li>
		<li><a href="#">Clientes V.I.P</a></li>
		<li><a href="#">Facturas</a></li>
	</ul></li>
        <li class="toplast"><a href="#" style="height:32px;line-height:32px;"><img src="menu3/CSS3 Menu_files/css3menu1/blue_circle - shutdown.png" alt=""/>Cerrar Sesion</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">css menu generator</a> by Css3Menu.com</p>
       
            </section>
         </div>
    </body>
</html>