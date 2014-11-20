/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Manejador;
import BD.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import Clases.Vendedor;
/**
 *
 * @author Mis Hijos
 */
public class ManejadorVendedor {
     public static ResultSet rs;

    public static boolean registrarVendedor(int idVendedor, String nombre, 
            String apellido, String email, String telefono, String cargo, 
            String login, String pass, int edad) {
        try {

            String Query;
            Conexion.cargaDriver();
            Vendedor pro = new Vendedor(idVendedor, nombre, apellido, email, telefono, cargo, login, pass, edad);

            if (Conexion.conexion() == 1) {
                Query = "insert into vendedores values(" + pro.getIdVendedor()+ ",'" + pro.getNombre()
                        + "','" + pro.getApellido()+ "','" + pro.getEmail()+ "','" + pro.getTelefono()  + "','"
                        + pro.getCargo() + "','" + pro.getLogin() + "','" + pro.getPass() + "'," +  pro.getEdad() + ")";
                if (Conexion.ejecutarDml(Query) == 1) {
                    System.out.println("Registrado.");
                } else {
                    System.out.println("No Registrado.");
                }
            } else {
                System.out.println("No hay conexion");
            }

            return true;
        } catch (Exception e) {
            return false;
        }
    } 
    
    
    public static String listarVendedores() {

        String resultados = "";
        String Query;
        Conexion.cargaDriver();

        if (Conexion.conexion() == 1) {
            Query = "select * from vendedores";
            if (Conexion.ejecutar(Query) == 1) {
                try {
                    resultados += "<center><table><thead><tr><th>Codigo</th><th>Nombre</th><th>Apellido"
                            + "</th><th>Email</th><th>Telefono</th><th>Cargo</th><th>Login</th>"
                            + "<th>Pass</th><th>Edad </th><th>(E)</th><th>(M)</th></tr></thead><tbody>";
                    while (Conexion.rs.next()) {
                        int x = Conexion.rs.getRow();
                        if(x % 2 == 0){
                        resultados += "<tr>";
                        resultados += "<td>" + Conexion.rs.getInt(1) + "</td> <td> "
                                + Conexion.rs.getString(2) + "</td> <td> "
                                + Conexion.rs.getString(3) + "</td> <td> "
                                + Conexion.rs.getString(4) + "</td> <td> "
                                + Conexion.rs.getString(5) + "</td> <td> "
                                + Conexion.rs.getString(6) + "</td> <td> "
                                + Conexion.rs.getString(7) + "</td> <td> "
                                + Conexion.rs.getString(8) + "</td> <td> " 
                                + Conexion.rs.getInt(9) + "</td> "
                                 + "<td> <a href=ListarVendedores.jsp?codigo="
                            + Conexion.rs.getInt(1) + "&valor=eliminar><IMG SRC=\"images/delete.jpg\" WIDTH=20 HEIGHT=20></a> </td> "
                            + "<td> <a href=ModificarVendedor.jsp?codigo="
                            + Conexion.rs.getInt(1) + "&nombre=" + Conexion.rs.getString(2)+"&apellido="
                                 + Conexion.rs.getString(3) + "&email=" + Conexion.rs.getString(4)+"&telefono="
                                  + Conexion.rs.getString(5) + "&cargo=" + Conexion.rs.getString(6)+"&login="
                                 + Conexion.rs.getString(7) + "&pass=" + Conexion.rs.getString(8)+"&edad="
                                + Conexion.rs.getInt(9)
                            + "><IMG SRC=\"images/edit.jpg\" WIDTH=20 HEIGHT=20></a> </td>";
                        resultados += "</tr>";
                                                                      
                      
                        }else{
                        
                          resultados += "<tr class=\"alt\">";
                        resultados += "<td>" + Conexion.rs.getInt(1) + "</td> <td> "
                                + Conexion.rs.getString(2) + "</td> <td> "
                                + Conexion.rs.getString(3) + "</td> <td> "
                                + Conexion.rs.getString(4) + "</td> <td> "
                                + Conexion.rs.getString(5) + "</td> <td> "
                                + Conexion.rs.getString(6) + "</td> <td> "
                                + Conexion.rs.getString(7) + "</td> <td> "
                                + Conexion.rs.getString(8) + "</td> <td> " 
                                + Conexion.rs.getInt(9) + "</td> "
                                 + "<td> <a href=ListarVendedores.jsp?codigo="
                            + Conexion.rs.getInt(1) + "&valor=eliminar><IMG SRC=\"images/delete.jpg\" WIDTH=20 HEIGHT=20></a> </td> "
                            + "<td> <a href=ModificarVendedor.jsp?codigo="
                            + + Conexion.rs.getInt(1) + "&nombre=" + Conexion.rs.getString(2)+"&apellido="
                                 + Conexion.rs.getString(3) + "&email=" + Conexion.rs.getString(4)+"&telefono="
                                  + Conexion.rs.getString(5) + "&cargo=" + Conexion.rs.getString(6)+"&login="
                                 + Conexion.rs.getString(7) + "&pass=" + Conexion.rs.getString(8)+"&edad="
                                + Conexion.rs.getInt(9)
                            + "><IMG SRC=\"images/edit.jpg\" WIDTH=20 HEIGHT=20></a> </td>";
                        resultados += "</tr>";
                        
                        
                        
                        
                        }
                        
                        
                        
                    }
                    resultados += "</tbody></table></center>";
                    return resultados;
                } catch (SQLException ex) {

                }
            }else{
            
            resultados+="<p class=" +"\"keeplogin\""+">";
                  
              resultados+="<label>Error en la consulta </label>";
               
               resultados+="</p>";
            
            return resultados;
            }
        } else {
            System.out.println("No hay conexion");
        }
        return "Error";

    }  
    
     public static Vendedor buscarVendedor(int idVendedor){
       String Query;
       Conexion.cargaDriver();
       if(Conexion.conexion() == 1){
           Query= "Select * from vendedores where idVendedor =" +idVendedor;
           if(Conexion.ejecutar(Query)==1){
               try{
                   if(Conexion.rs.next()){
                   Vendedor p = new Vendedor(Conexion.rs.getInt(1), Conexion.rs.getString(2), 
                                              Conexion.rs.getString(3), Conexion.rs.getString(4), 
                                              Conexion.rs.getString(5), Conexion.rs.getString(6), Conexion.rs.getString(7),
                                              Conexion.rs.getString(8), Conexion.rs.getInt(9));
                   return p;
                   }
               } catch (SQLException ex){
                
                 System.out.println(ex.toString());
                   
               }
               
               
           }
       }else {
        
           System.out.println("No hay conexion");
       }
       
       return null;
       
       }
      public static int Validarlogin(String login){
       String Query;
       Conexion.cargaDriver();
    
       if(Conexion.conexion() == 1){
           System.out.println("conecta");
           Query= "Select * from vendedores where  login like '" + login +"'";
          
           if(Conexion.ejecutar(Query)==1){
               System.out.println("ejecuta query");
                
               try{
                 if(Conexion.rs.next()){
                  
                    return 0;
                   
               
                  } return 1;    
               } catch (SQLException ex){
                
                 System.out.println(ex.toString());
                   
               }
               
               
           }
       }else {
        
           System.out.println("No hay conexion");
       }
       
       return -1;
       
       } 
    
       public static boolean Eliminar(int idVendedor){
      String Query;
      Vendedor p = ManejadorVendedor.buscarVendedor(idVendedor);
      if(p!=null){
      Query = "DELETE FROM vendedores WHERE vendedores.idVendedor = " +idVendedor;
      if(Conexion.ejecutarDml(Query)==1){
      
      return true;
      
      }else{
      
      System.out.println("No ejecuta delete");
      
      }
      
      
      }else{
      
      
       System.out.println("No se encuentra el vendedor");
      
      }
      return false;
      
      }
       
    public static boolean Modificar(int idVendedor, String nombre, String apellido, String email, String telefono, String cargo,
            String login, String pass, int edad){
      String Query;
      Vendedor p = ManejadorVendedor.buscarVendedor(idVendedor);
      if(p!=null){
      Query = "UPDATE final.vendedores SET idVendedor ='" +idVendedor 
              
              +"', nombre = '" + nombre 
              +"', apellido = '" + apellido
              +"', email = '" + email
              +"', telefono = '" + telefono
              +"', cargo = '" + cargo
              +"', login = '" + login
              +"', contraseña = '" + pass
              +"', edad = '" + edad + "'"
              
              +"WHERE vendedores.idVendedor =" +idVendedor;
      if(Conexion.ejecutarDml(Query)==1){
      
      return true;
      
      }else{
      
      System.out.println("No ejecuta update");
      
      }
      
      
      }else{
      
      
       System.out.println("No se encuentra el vendedor");
      
      }
      return false;
      
      }
      
      
      
}


