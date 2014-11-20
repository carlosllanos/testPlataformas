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
public class ManejadorLogin {
     public static ResultSet rs;
    
    public static Vendedor login(String login, String pass){
       String Query;
       Conexion.cargaDriver();
       if(Conexion.conexion() == 1){
           System.out.println("conecta");
           Query= "Select * from vendedores where  login like '" + login +"'" + "and contraseña like '" +pass +"'";
           
           if(Conexion.ejecutar(Query)==1){
               System.out.println("ejecuta query");
               Vendedor p = null;
               try{
                 while(Conexion.rs.next()){
                   p = new Vendedor(Conexion.rs.getInt(1), Conexion.rs.getString(2), 
                                              Conexion.rs.getString(3), Conexion.rs.getString(4), 
                                              Conexion.rs.getString(5), Conexion.rs.getString(6), Conexion.rs.getString(7),
                                              Conexion.rs.getString(8), Conexion.rs.getInt(9));
                   
               
                  } return p;    
               } catch (SQLException ex){
                
                 System.out.println(ex.toString());
                   
               }
               
               
           }
       }else {
        
           System.out.println("No hay conexion");
       }
       
       return null;
       
       } 
}
