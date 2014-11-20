<%-- 
    Document   : login
    Created on : 07-jun-2014, 21:27:26
    Author     : Mis Hijos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login " />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="index.html">
                    <strong>&laquo; Regresar </strong>
                </a>
                <span class="right">
                    <a href=" https://www.google.com.co/">
                        <strong>Estoy Probandolo llanos, no te alarmes</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1>Toda la Tecnologia a Tu Alcance</h1>	
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="ingreso" autocomplete="off"> 
                                <h1>Log in</h1>
                                  <%
    if (request.getParameter("error") != null) {
        out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>");
               out.println(request.getParameter("error")+"</label>");
               
               out.println("</p>");
       ;
    }
    
    if(request.getParameter("cerrar") !=null){
     out.println("<label>");
               out.println(request.getParameter("cerrar")+"</label>");
               
               out.println("</p>");
    
    
    }
    
      %>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Usuario </label>
                                    <input id="username" name="usuario" required="required" type="text" placeholder="MiUsuario"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Contrasena </label>
                                    <input id="password" name="pass" required="required" type="password" placeholder="Mi Contrasena" /> 
                                </p>
                                
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                             
                            </form>
                        </div>

                       
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>