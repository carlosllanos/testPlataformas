<%-- 
    Document   : Comprar
    Created on : 09-jun-2014, 1:56:24
    Author     : Mis Hijos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<SCRIPT language="javascript">
var contador=0;
          function addRow(tableID) {
 contador++;
               var table = document.getElementById(tableID);

 

               var rowCount = table.rows.length;

               var row = table.insertRow(rowCount);

 

               var cell1 = row.insertCell(0);

               var element1 = document.createElement("input");
             
               element1.type = "text";
               element1.name = "idProducto"+contador;

               cell1.appendChild(element1);

 

               var cell2 = row.insertCell(1);

               var element2 = document.createElement("input");

               element2.type = "text";
               element2.name = "cantidad"+contador;
               cell2.appendChild(element2);

          }

 

          function deleteRow(tableID) {

               try {

               var table = document.getElementById(tableID);

               var rowCount = table.rows.length;

 

              

                   

                         table.deleteRow(0);
                         contador--; 
                         

                         

                    

               

               }catch(e) {

                    alert(e);

               }

          }

 

     </SCRIPT>
<style>
    div#itsthetable{
	font-family:		Helvetica, Arial, "Franklin Gothic Medium", sans-serif;
}

table{
	border-collapse: collapse;
	text-align:left;
}
caption{
	text-transform:		uppercase;
	font-size: 			2em;
	color:				#000000;
	text-align:			left;
	font-weight:		bolder;
	border-bottom:		6px solid #000;
}

thead tr th{
	color:				#0099ff;
	text-transform:		uppercase;
	text-align:			center;	
	padding:			0.4em 0;
	border-bottom:		3px solid #000;
}

tfoot th, tfoot td{
	border-top:			3px solid #000;
}
tr td, tr th{
	border-bottom:		1px solid #000;
	padding:			0.6em 0.4em;
	line-height:		1.5em;
}
tr.odd td, tr.odd th{
	background:url(tablebkg.jpg) top left repeat-x;
}

tbody th a{
	text-transform:uppercase;
}

tbody a, tbody a:link{
	color:			#0099ff;
	font-weight:	bold;	
	text-decoration:none;
}

tbody a:visited{
	color:			#000;
}

h2 {
  font-family: Verdana;
  font-weight: normal;
  color: #024457;
  span {color: #167F92;}
}

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
        <link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />

		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="menu3/CSS3 Menu_files/css3menu1/style.css" type="text/css" />
        <style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
        <title>Vendedor</title>
    </head>
    <body>
        
        <div class="container">
            <header>
            <h1>Comprar</h1>	
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
       
<br>
 <br>
         <div id="container_demo">
             <form  action="Comprar.jsp" autocomplete="off"> 
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <%  String cod = (String) session.getAttribute("idvendedor");
%>
               
                   
                             <div id="wrapper">
                                 <h1>Formulario de Compra <%=cod %></h1> 
                            <br>
                           <% 
                            try {
                
                              
                                if(Manejador.ManejadorCompra.registrarEncFactura(Integer.parseInt(request.getParameter("numfactura")), Integer.parseInt(request.getParameter("idVendedor")), 
                                        Integer.parseInt(request.getParameter("idCliente")), request.getParameter("fecha"))){
                                 out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>¡Enhorabuena! Compra realizada </label>");
               
               out.println("</p>");;
                               
                                
                                }else{
                                
                                 out.println("<p class=" +"\"keeplogin\""+">");
                  
               out.println("<label>Ha ocurrido un error </label>");
               
               out.println("</p>");;
                                
                                
                                }
                                
                                
                                
                                
                                int i = 0;
                            while(request.getParameter("idProducto"+i)!= null) {
                            
                            if(Manejador.ManejadorCompra.registrarDetfactura(Integer.parseInt(request.getParameter("numfactura")), Integer.parseInt(request.getParameter("idProducto"+i)), 
                                    Integer.parseInt(request.getParameter("cantidad"+i)))){
                            
                             i=i+1;
                            
                            }
                            
                            
                            }   
                                
                                
            } catch (Exception e) {
            }
                           
                     
                           
                           %>
                          
             <center>               
                          <h2>Formulario<span> de</span> encabezado <span>de factura</span></h2>
 
<table>
  
  <tr>
    <th></th>
    <th </th>
   
  </tr>
  
  <tr>
    <td>Numero de Factura</td>
    <td><input type="number" name="numfactura"/></td>
    
  </tr>
  
  <tr>
     <td>Id del vendedor</td>
     <td><input type="number" name="idVendedor" value="<%=cod %>" readonly/></td>
  </tr>
  
  <tr>
     <td>Id del Cliente</td>
    <td><input type="number" name="idCliente"/></td>
  </tr>
  
  <tr>
    <td>Fecha de compra</td>
    <td><input type="text" name="fecha" placeholder="ej: 2003-03-03" pattern="\d{4}-\d{2}-\d{2}"/></td>
  </tr>
  
</table>
                          
 </center>            
                          <br><br><br> 
<center>
                           
                           
                   <h2>Formulario<span> de</span> detalle <span>de factura</span></h2>
                           <INPUT type="button" value="Añadir Producto" onclick="addRow('dataTable');" />

 

   <!--  <INPUT type="button" value="Quitar Producto" onclick="deleteRow('dataTable');" /> -->

 
<br><br>
     <TABLE id="dataTable" >

          <TR>

               <TD>Id de Producto</TD>

               <TD> Cantidad </TD>

          </TR>
           <TR>

               <TD><INPUT type="text" name="idProducto0" /></TD>

               <TD> <INPUT type="text" name="cantidad0" /> </TD>

          </TR>

     </TABLE>
                            <p class="login button"> 
                                    <input type="submit" value="Comprar" /> 
								</p>   
 </center>
                        
                             
</div>
                           
       </form>                     
                           
                            
         </div>
                          
                       
						
                   
                    

            </section>
         </div>
    </body>
</html>

