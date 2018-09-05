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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Crear Usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <center><h2>Crear Usuario</h2>
                    <form action="./../crearUsuario" id="contactForm" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-md-6 control-label">Nombre</label>
                            <div class="col-md-9">
                                <input type="nombre" class="form-control" name="nombre" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 control-label">Usuario</label>
                            <div class="col-md-9">
                                <input type="usuario" class="form-control" name="usuario" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 control-label">Clave</label>
                            <div class="col-md-9">
                                <input type="clave" class="form-control" name="clave" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-9 col-md-offset-3">
                                <input type="submit" class="btn btn-success btn-block" value="Guardar"/>
                            </div>
                        </div>
                    </form> 
                </center>
            </div>    
        </div>
    </body>
</html>
