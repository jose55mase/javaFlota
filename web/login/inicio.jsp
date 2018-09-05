<%-- 
    Document   : inicio
    Created on : 4/09/2018, 06:34:44 PM
    Author     : J.J
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--Los estilos que se usaran en este caso -->
        <link rel="stylesheet" href="inicio.css" type="text/css"/>        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">                    
                    <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Iniciar sesion</button>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="./inicio.jsp">Home</a></li>                         
                </ul>
            </div>
        </nav>

        

        <div id="id01" class="modal">

            <form class="modal-content animate" action="./../sesion" method="post">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                    <img src="img_avatar2.png" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <label for="uname"><b>Username</b></label>
                    <input type="text" placeholder=". Usuario ."  name="usuario" required>

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder=" ********* " name="clave" required>

                    <button type="submit">Login</button>                    
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>                    
                </div>
            </form>
        </div>


        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h3 class="display-4">Hola ! como estas?</h3>
                <p class="lead">Esta es una plantilla en la que tabajaremos. <br> Buen dia..</p>
            </div>
        </div>



        <div class="footer">
            <p>En este punto colocaremos el footer</p>
        </div>

        <!--Los scripts que se usaran para este modelo -->
        <script language="JavaScript" type="text/javascript" src="inicio.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
