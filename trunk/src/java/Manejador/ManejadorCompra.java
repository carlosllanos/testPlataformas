/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Manejador;

import BD.Conexion;
import Clases.Cliente;

/**
 *
 * @author Mis Hijos
 */
public class ManejadorCompra {
    public static boolean registrarEncFactura(int numfactura, int idvendedor, int idcliente, String fecha) {
        try {

            String Query;
            Conexion.cargaDriver();
            

            if (Conexion.conexion() == 1) {
                Query = "insert into factura values(" + numfactura+ "," + idvendedor
                        + "," + idcliente+ ",'" + fecha+ "')";
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
    
    public static boolean registrarDetfactura(int numfactura, int idprodcto, int cantidad) {
        try {

            String Query;
            Conexion.cargaDriver();
            

            if (Conexion.conexion() == 1) {
                Query = "insert into detalle_factura values(" + numfactura+ "," + idprodcto
                        + "," + cantidad+ ")";
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
    
    
}
