/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Clases.Vendedor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mis Hijos
 */
public class ingreso extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
         
            String login = request.getParameter("usuario");
            String contra = request.getParameter("pass");
            
           Vendedor p = Manejador.ManejadorLogin.login(login, contra);
            
           if(p!=null){
           
           int id=p.getIdVendedor();
           String nombre = p.getNombre();
           String ape = p.getApellido();
           String email = p.getEmail();
           String tel = p.getTelefono();
           String cargo = p.getCargo();
           int edad = p.getEdad();
           String login2 = p.getLogin();
               
           
           if(cargo.equalsIgnoreCase("admin")){
          HttpSession session = request.getSession(true);
          
          session.setAttribute("idvendedor", String.valueOf(id));
           session.setAttribute("nombre", nombre);
           session.setAttribute("apellido", ape);
           session.setAttribute("email", email);
           session.setAttribute("tel", tel);
           session.setAttribute("login", login2);
           response.sendRedirect("Admin.jsp");           
           }else{
           
              HttpSession session = request.getSession(true);
          
          session.setAttribute("idvendedor", String.valueOf(id));
           session.setAttribute("nombre", nombre);
           session.setAttribute("apellido", ape);
           session.setAttribute("email", email);
           session.setAttribute("tel", tel);
           session.setAttribute("login", login2);
           response.sendRedirect("Vendedor.jsp");       
           
           
           }
           
           }else{
           
            
           response.sendRedirect("errorLogin.jsp");
           
           } 
           
           
           
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
