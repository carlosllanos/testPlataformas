/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package BD;

/**
 *
 * @author Mis Hijos
 */
import java.sql.*;

public class Conexion {

    public static Connection con;
    public static ResultSet rs;

//-------------- Cargar Driver de Sunpara ODBC-------------
    public static void cargaDriver() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
         System.out.println("no driver bro");
        }
    }

//-------------------- conectar al DSN de ODBC------------
    public static int conexion() {
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/final","root","admin");

        } catch (SQLException e) {
            //No  se puede establecer la conexi�n
            return 0;
        }
        return 1;
    }

    //-----------metodo ejecutar ddl---------
    public static int ejecutar(String sql) {
        Statement st = null;
        rs = null;
        try {
            st = con.createStatement();
            rs = st.executeQuery(sql);
        } catch (Exception e) {
            return (0);
        }
        return 1;
    }
    //---------metodo ejecutardml----------

    public static int ejecutarDml(String sql) {
        Statement st = null;
        try {            
            st = con.createStatement();
            st.executeUpdate(sql);
            
        } catch (SQLException e) {
            return (0);
        }
        return 1;
    }

 
}

