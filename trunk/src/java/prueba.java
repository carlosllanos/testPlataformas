
import BD.Conexion;
import Clases.Cliente;
import Clases.Vendedor;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Mis Hijos
 */
public class prueba {
     public static void main(String[] args) {
        
        String Query;
        Conexion.cargaDriver();

        if (Conexion.conexion()==1) {
            System.out.println("Hay conexion");
            JOptionPane.showMessageDialog(null,"Hay conexion");
        } else {
            System.out.println("No hay conexion");
            JOptionPane.showMessageDialog(null," No hay conexion");
        }
     /* Query = "insert into `producto`  values (NULL, 'willy', '23', '3434544');";
        if (Conexion.ejecutarDml(Query) == 1) {
            System.out.println("Registrado.");
        }
        else{System.out.println("No Registrado.");*/
        
       Cliente p = Manejador.ManejadorCliente.buscarClientes(1);
        
         System.out.println(p.getNombre());
         
         
         if(Manejador.ManejadorCliente.Modificar(p.getIdCodigo(), p.getNombre(), p.getApellido(), p.getEmail(), "68")){
         
         System.out.println("sano");
         
         }else{
         
         System.out.println("barro");
         
         }
       
        }
        
        
        }
     
