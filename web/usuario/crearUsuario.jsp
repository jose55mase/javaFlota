<%-- 
    Document   : crearUsuario
    Created on : 4/09/2018, 04:13:34 PM
    Author     : sebcas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="./../crearUsuario" id="contactForm" method="post" class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label">Nombre</label>
                <div class="col-md-6">
                    <input type="nombre" class="form-control" name="nombre" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Usuario</label>
                <div class="col-md-6">
                    <input type="usuario" class="form-control" name="usuario" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Clave</label>
                <div class="col-md-6">
                    <input type="clave" class="form-control" name="clave" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-9 col-md-offset-3">
                    <input type="submit" class="btn btn-success" value="Guardar"/>
                </div>
            </div>
        </form> 
    </body>
</html>
