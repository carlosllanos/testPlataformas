/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Manejador;

import BD.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import Clases.Cliente;

/**
 *
 * @author Mis Hijos
 */
public class ManejadorCliente {
      public static ResultSet rs;

    public static boolean registrarCliente(int idCliente, String nombre, String apellido, String email, String telefono) {
        try {

            String Query;
            Conexion.cargaDriver();
            Cliente pro = new Cliente(idCliente, nombre, apellido, email, telefono);

            if (Conexion.conexion() == 1) {
                Query = "insert into cliente values(" + pro.getIdCodigo()+ ",'" + pro.getNombre()
                        + "','" + pro.getApellido()+ "','" + pro.getEmail()+ "','" + pro.getTelefono()  +"')";
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
    
    
          public static String listarClientes() {

        String resultados = "";
        String Query;
        Conexion.cargaDriver();

        if (Conexion.conexion() == 1) {
            Query = "select * from cliente";
            if (Conexion.ejecutar(Query) == 1) {
                try {
                     resultados += "<center><table><thead><tr><th>Codigo</th><th>Nombre</th><th>Apellido"
                            + "</th><th>Email</th><th>Telefono</th><th>(E)</th><th>(M)</th></tr></thead><tbody>";
                        while (Conexion.rs.next()) {
                        int x = Conexion.rs.getRow();
                        if(x % 2 == 0){
                        resultados += "<tr>";
                        resultados += "<td>" + Conexion.rs.getInt(1) + "</td> <td> "
                                + Conexion.rs.getString(2) + "</td> <td> "
                                + Conexion.rs.getString(3) + "</td> <td> "
                                + Conexion.rs.getString(4) + "</td> <td> "
                                + Conexion.rs.getString(5) + "</td>"
                              
                                 + "<td> <a href=ListarClientes.jsp?codigo="
                            + Conexion.rs.getInt(1) + "&valor=eliminar><IMG SRC=\"images/delete.jpg\" WIDTH=20 HEIGHT=20></a> </td> "
                            + "<td> <a href=ModificarCliente.jsp?codigo="
                            + Conexion.rs.getInt(1) + "&nombre=" + Conexion.rs.getString(2)+"&apellido="
                                 + Conexion.rs.getString(3) + "&email=" + Conexion.rs.getString(4)+"&telefono="
                                  + Conexion.rs.getString(5) 
                            + "><IMG SRC=\"images/edit.jpg\" WIDTH=20 HEIGHT=20></a> </td>";
                        resultados += "</tr>";
                                                                      
                      
                        }else{
                        
                          resultados += "<tr class=\"alt\">";
                        resultados += "<td>" + Conexion.rs.getInt(1) + "</td> <td> "
                                + Conexion.rs.getString(2) + "</td> <td> "
                                + Conexion.rs.getString(3) + "</td> <td> "
                                + Conexion.rs.getString(4) + "</td> <td> "
                                + Conexion.rs.getString(5) + "</td>"
                              
                                 + "<td> <a href=ListarClientes.jsp?codigo="
                            + Conexion.rs.getInt(1) + "&valor=eliminar><IMG SRC=\"images/delete.jpg\" WIDTH=20 HEIGHT=20></a> </td> "
                            + "<td> <a href=ModificarCliente.jsp?codigo="
                            + Conexion.rs.getInt(1) + "&nombre=" + Conexion.rs.getString(2)+"&apellido="
                                 + Conexion.rs.getString(3) + "&email=" + Conexion.rs.getString(4)+"&telefono="
                                  + Conexion.rs.getString(5) 
                            + "><IMG SRC=\"images/edit.jpg\" WIDTH=20 HEIGHT=20></a> </td>";
                        resultados += "</tr>";
                        
                        
                        
                        
                        }
                        
                        
                        
                    }
                    resultados += "</table></center>";
                    return resultados;
                } catch (SQLException ex) {

                }
            }
        } else {
            System.out.println("No hay conexion");
        }
        return "Error";

    }
     public static Cliente buscarClientes(int idCliente){
       String Query;
       Conexion.cargaDriver();
       if(Conexion.conexion() == 1){
           Query= "Select * from cliente where idCliente =" +idCliente;
           if(Conexion.ejecutar(Query)==1){
               try{
                   if(Conexion.rs.next()){
                   Cliente p = new Cliente(Conexion.rs.getInt(1), Conexion.rs.getString(2), Conexion.rs.getString(3), Conexion.rs.getString(4), Conexion.rs.getString(5));
                   return p;}
               } catch (SQLException ex){
                
                 System.out.println(ex.toString());
                   
               }
               
               
           }
       }else {
        
           System.out.println("No hay conexion");
       }
       
       return null;
       
       }
     
      public static boolean Eliminar(int idCliente){
      String Query;
      Cliente p = ManejadorCliente.buscarClientes(idCliente);
      if(p!=null){
      Query = "DELETE FROM cliente WHERE cliente.idCliente = " +idCliente;
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
      public static boolean Modificar(int idCliente, String nombre, String apellido, String email, String telefono){
      String Query;
      Cliente p = ManejadorCliente.buscarClientes(idCliente);
      if(p!=null){
      Query = "UPDATE final.cliente SET idCliente ='" +idCliente 
              
              +"', nombre = '" + nombre 
              +"', apellido = '" + apellido
              +"', email = '" + email
              +"', telefono = '" + telefono
              +"'"
              
              +"WHERE cliente.idCliente =" +idCliente;
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
