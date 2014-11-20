<%-- 
    Document   : ModificarVendedor
    Created on : 08-jun-2014, 20:28:07
    Author     : Mis Hijos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <h1>Modificar Vendedor</h1>	
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
	<li class="toplast"><a href="#" style="width:136px;height:32px;line-height:32px;"><img src="menu2/CSS3 Menu_files/css3menu1/blue_circle - shutdown.png" alt=""/>Cerrar Sesion</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">html menu generator</a> by Css3Menu.com</p>
       
<br>
 <br>
     <div id="container_demo">
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="ModificarVendedor.jsp" autocomplete="off"> 
                                <h1>Modificacion de Vendedores</h1> 
       <% 
         try {
               
              if(Manejador.ManejadorVendedor.buscarVendedor(Integer.parseInt(request.getParameter("idVend"))).getLogin().equalsIgnoreCase( request.getParameter("usuario"))){
               if (Manejador.ManejadorVendedor.Modificar(Integer.parseInt(request.getParameter("idVend")), 
                       request.getParameter("nom"), request.getParameter("ape"), request.getParameter("em"), request.getParameter("tel"), 
                       request.getParameter("car"), request.getParameter("usuario"), request.getParameter("passw"), 
                       Integer.parseInt(request.getParameter("edads")))) {
                        %>
                         <jsp:forward page="ListarVendedores.jsp" />
                        <%
                    } else {
                        out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>Error en los datos. Revisar </label>");
               
               out.println("</p>");
                    }
               }else{
              
              if(Manejador.ManejadorVendedor.Validarlogin(request.getParameter("usuario"))==1){
               if (Manejador.ManejadorVendedor.Modificar(Integer.parseInt(request.getParameter("idVend")), 
                       request.getParameter("nom"), request.getParameter("ape"), request.getParameter("em"), request.getParameter("tel"), 
                       request.getParameter("car"), request.getParameter("usuario"), request.getParameter("passw"), 
                       Integer.parseInt(request.getParameter("edads")))) {
                        %>
                         <jsp:forward page="ListarVendedores.jsp" />
                        <%
                    }else {
                        out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>Error en los datos. Revisar </label>");
               
               out.println("</p>");
                    }
              
              
              }else{
              
               out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>El Login que desea modificar ya ha sido utilizado por otro usuario </label>");
               
               out.println("</p>");
              
              
              }
              
              }
               
                    
                
            } catch (Exception e) {
            }
        
        
        
        %>
                                <p> 
                                    <label for="idVendedor" class="uname" data-icon="u"> Codigo </label>
                                    <input id="idVendedor" name="idVend" required="required" type="number" value="<%=request.getParameter("codigo")%>"/>
                                </p>
                                <p> 
                                    <label for="nombre" class="uname" data-icon="u"> Nombres </label>
                                    <input id="nombre" name="nom" required="required" type="text" value="<%=request.getParameter("nombre")%>"/> 
                                </p>
                                <p> 
                                    <label for="apellido" class="uname" data-icon="u"> Apellidos </label>
                                    <input id="apellido" name="ape" required="required" type="text" value="<%=request.getParameter("apellido")%>" /> 
                                </p>
                                  <p> 
                                      <label class="youmail" data-icon="e" for="email">Email</label>
                                    <input id="email" type="email" value="<%=request.getParameter("email")%>" required="required" name="em"></input> 
                                </p>
                                <p> 
                                    <label for="tel" class="uname" data-icon="u">Telefono </label>
                                    <input id="tel" name="tel" required="required" type="text" value="<%=request.getParameter("telefono")%>" /> 
                                </p>
                                 <p> 
                                    <label for="cargo" class="uname" data-icon="u">Cargo </label>
                                    <input id="cargo" name="car" required="required" type="text" value="<%=request.getParameter("cargo")%>" /> 
                                </p>
                                  <p> 
                                    <label for="user" class="uname" data-icon="u">Login </label>
                                    <input id="user" name="usuario" required="required" type="text" value="<%=request.getParameter("login")%>" /> 
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Contrasena </label>
                                    <input id="password" name="passw" required="required" type="text" value="<%=request.getParameter("pass")%>" /> 
                                </p>
                                <p> 
                                   
                                </p>
                                <p> 
                                    <label for="edad" class="uname" data-icon="u"> Edad </label>
                                    <input id="age" name="edads" required="required" type="number" value="<%=request.getParameter("edad")%>"/>
                                </p>
                                  <input type="hidden" name="codigo" value="<%=request.getParameter("codigo")%>" />
                                  <input type="hidden" name="nombre" value="<%=request.getParameter("nombre")%>" />
                                    <input type="hidden" name="apellido" value="<%=request.getParameter("apellido")%>" />
                                      <input type="hidden" name="email" value="<%=request.getParameter("email")%>" />
                                        <input type="hidden" name="telefono" value="<%=request.getParameter("telefono")%>" />
                                      <input type="hidden" name="cargo" value="<%=request.getParameter("cargo")%>" />
                                        <input type="hidden" name="login" value="<%=request.getParameter("login")%>" />
                                          <input type="hidden" name="pass" value="<%=request.getParameter("pass")%>" />
                                            <input type="hidden" name="edad" value="<%=request.getParameter("edad")%>" />
                                <p class="login button"> 
                                    <input type="submit" value="Modificar" /> 
								</p>
                             
                            </form>
                        </div>

                       
						
                    </div>
                    </div>

            </section>
         </div>
    </body>
</html>
