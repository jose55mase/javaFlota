/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utilidad.ConectaBD;

/**
 *
 * @author adsi1
 */
@WebServlet(name = "crearUsuario", urlPatterns = {"/crearUsuario"})
public class crearUsuario extends HttpServlet {

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
       try{
            PrintWriter out = response.getWriter();
        ConectaBD con = new ConectaBD();
        Connection c = con.conectar();
        
         
        String nombre = request.getParameter("nombre");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        
        String query = "INSERT INTO usuario(nombre,usuario,clave) values ('"+nombre+"', '"+usuario+"', '"+clave+"');";
        System.out.println(query);
        out.print("<h1>listo</h1>");
        Statement stm = c.createStatement();
        stm.executeUpdate(query);
        
        ResultSet resul = stm.executeQuery("SELECT * FROM usuario");
        response.sendRedirect("verUsuario");
        
        out.println("<h1> Insertó exitosamente </h1>");
        stm.close();
        resul.close();
        c.close();
        con.cierraConexion();
        

        }catch(SQLException e){
            e.printStackTrace();
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
