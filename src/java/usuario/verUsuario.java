/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

import entidad.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utilidad.ConectaBD;

/**
 *
 * @author sebcas
 */
@WebServlet(name = "verUsuario", urlPatterns = {"/verUsuario"})
public class verUsuario extends HttpServlet {

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
       try {
            ConectaBD con = new ConectaBD();
            Connection cn = con.conectar();
            Statement stat = cn.createStatement();
            System.out.println("opl");
            String query = "Select * from usuario;";
            ResultSet rs = stat.executeQuery(query);
            ArrayList<Usuario> lista = new ArrayList();

            while (rs.next()) {

                Usuario usuario = new Usuario();
                usuario.setId(Integer.parseInt(rs.getString(1)));
                usuario.setNombre(rs.getString(2));
                usuario.setUsuario(rs.getString(3));
                usuario.setClave(rs.getString(4));

                lista.add(usuario);

            }
            stat.close();
            cn.close();
            HttpSession sesion = request.getSession();
            sesion.setAttribute("lista", lista);
            response.sendRedirect("./usuario/verUsuario.jsp");
        }catch(SQLException s){
             s.printStackTrace();
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