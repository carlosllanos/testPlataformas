/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Manejador;

import BD.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import Clases.Producto;

/**
 *
 * @author Mis Hijos
 */
public class ManejadorProducto {
     public static ResultSet rs;

    public static boolean registrarProducto(int idProducto, String nombre, String marca, double precio) {
        try {

            String Query;
            Conexion.cargaDriver();
            Producto pro = new Producto(idProducto, nombre, marca, precio);

            if (Conexion.conexion() == 1) {
                Query = "insert into productos values(" + pro.getIdProducto() + ",'" + pro.getNombre()
                        + "','" + pro.getMarca() + "'," + pro.getPrecio() + ")";
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
    
       public static String listarProductos() {

        String resultados = "";
        String Query;
        Conexion.cargaDriver();

        if (Conexion.conexion() == 1) {
            Query = "select * from productos";
            if (Conexion.ejecutar(Query) == 1) {
                try {
                    resultados += "<center><table border=1><tr><td>Codigo</td><td>Descripcion</td><td>Marca</td><td>Precio</td>";
                    while (Conexion.rs.next()) {
                        resultados += "<tr>";
                        resultados += "<td>" + Conexion.rs.getInt(1) + "</td> <td> "
                                + Conexion.rs.getString(2) + "</td> <td> "
                                + Conexion.rs.getString(3) + "</td> <td> "
                                + Conexion.rs.getDouble(4) + "</td>";
                        resultados += "</tr>";
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
    
       public static Producto buscarProducto(int idProducto){
       String Query;
       Conexion.cargaDriver();
       if(Conexion.conexion() == 1){
           Query= "Select * from productos where idProducto =" +idProducto;
           if(Conexion.ejecutar(Query)==1){
               try{
                   
                   Producto p = new Producto(Conexion.rs.getInt(1), Conexion.rs.getString(2), Conexion.rs.getString(3), Conexion.rs.getDouble(4));
                   return p;
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
