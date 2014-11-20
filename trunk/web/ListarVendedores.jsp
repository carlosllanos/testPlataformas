<%-- 
    Document   : ListarVendedores
    Created on : 08-jun-2014, 1:58:29
    Author     : Mis Hijos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
.datagrid table { border-collapse: collapse; text-align: left; width: 100%; } 
.datagrid {font: normal 12px/150% Arial, Helvetica, sans-serif; background: #fff; overflow: 
              hidden; border: 3px solid #4FB3C2; -webkit-border-radius: 2px; -moz-border-radius: 
              2px; border-radius: 2px; }.datagrid table td, .datagrid table th { padding: 3px 10px; }
              
.datagrid table thead th {background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #006699), 
                             color-stop(1, #4FB3C2) );background:-moz-linear-gradient( center top, #006699 5%, 
                             #4FB3C2 100% );
   filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#006699', endColorstr='#4FB3C2');
   background-color:#006699; color:#FFFFFF; font-size: 15px; font-weight: bold; border-left: 1px solid #0070A8; } 
.datagrid table thead th:first-child { border: none; }
.datagrid table tbody td { color: #00496B; border-left: 4px solid #4FB3C2;font-size: 
                              12px;font-weight: normal; }
.datagrid table tbody .alt td { background: #E1EEF4; color: #00496B; }
.datagrid table tbody td:first-child { border-left: none; }
.datagrid table tbody tr:last-child td { border-bottom: none; }    
    
</style>>    


<html>
    <head>
         <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login " />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
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
            <h1>Listar Vendedores</h1>	
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
       
<br>
 <br>
         <div id="container_demo">
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                  
               
                   
                             <div id="wrapper">
                            <h1>Listado de Vendedores</h1> 
                            <br>
                           <% 
                            try {
                if (request.getParameter("valor").equals("eliminar")) {
                    if (Manejador.ManejadorVendedor.Eliminar(Integer.parseInt(
                            request.getParameter("codigo")))) {
                        out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>¡Enhorabuena! Se ha eliminado un vendedor </label>");
               
               out.println("</p>");;
                    } else {
                        out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>¡Ups! Ha ocurrido un error, no se ha eliminado el vendedor, lo sentimos</label>");
               
               out.println("</p>");
                    }
                }
            } catch (Exception e) {
            }
                           
                           
                           
                           %>
                          <div class="datagrid">  
                            
                                <%
                            try{
                            
                            out.println(Manejador.ManejadorVendedor.listarVendedores());
                            
                            
                            }catch(Exception e){
                                out.println("Error");
                                
                            }
                            

          
           
                                              %>
                            </div>
                   
                             </div>
                            
         </div>
                          

                       
						
                   
                    

            </section>
         </div>
    </body>
</html>
