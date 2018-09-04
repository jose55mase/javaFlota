<%-- 
    Document   : verUsuario
    Created on : 4/09/2018, 03:25:39 PM
    Author     : sebcas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entidad.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession c = request.getSession();

            ArrayList<Usuario> d = (ArrayList) c.getAttribute("lista");

        %>

        <h2>Consultar Usuarios</h2>  

        <table class="table table-condensed">
            <thead>
                <tr>            
                    <th>User</th>
                    <th>Password</th>
                    <th>Rol</th>
                    <th>fas</th>
                </tr>
            </thead>
            <tbody>
                <%   for (int i = 0; i < d.size(); i++) {%>

                <tr>
                    <td><%= ((Usuario) d.get(i)).getId()%></td>
                    <td><%= ((Usuario) d.get(i)).getNombre()%></td>
                    <td><%= ((Usuario) d.get(i)).getUsuario()%></td>
                    <td><%= ((Usuario) d.get(i)).getClave()%></td>
                </tr>

                <% }%>
            </tbody>
        </table>
    </body>
</html>
