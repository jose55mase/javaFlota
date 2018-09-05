<%-- 
    Document   : inicio
    Created on : 4/09/2018, 06:34:44 PM
    Author     : J.J
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

<!--Los estilos que se usaran en este caso -->
<!-- <link rel="stylesheet" href="inicio.css" type="text/css"/>        
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


 <div class="container">
     <div id="id01" class="modal">

         <form class="modal-content animate" action="./../sesion" method="post">
             <div class="imgcontainer">
                 <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                 <img src="../images/JJ_J.jpg" alt="Avatar" class="avatar" style="width:10%;">
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
<!--<script language="JavaScript" type="text/javascript" src="inicio.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap 4 Website Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <style>
            .fakeimg {
                height: 200px;
                background: #aaa;
            }
        </style>
    </head>
    <body>

        <div class="jumbotron text-center" style="margin-bottom:0">
            <h1>My First Bootstrap 4 Page</h1>
            <p>Resize this responsive page to see the effect!</p> 
        </div>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="#">J.J</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="myBtn1">Registrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="myBtn">Ingresar</a>
                    </li>  
                </ul>
            </div>  
        </nav>

        <div class="container mt-3">

            <!-- The Modal -->
            <div class="modal fade" id="myModal1">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Registrar</h4>
                            <button type="button" class="close" data-dismiss="modal">×</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form class="modal-content animate" action="./../sesion" method="post">
                                <div class="imgcontainer">                   
                                    <center><img src="../images/JJ_J.jpg" alt="Avatar" class="avatar" style="width:25%;"></center>
                                </div>

                                <div class="container">
                                    <label for="nom"><b>Nombre</b></label>
                                    <input type="text" placeholder="Ingrese el nombre "  name="nombre" class="form-control" required>
                                    
                                    <label for="ape"><b>Apellido</b></label>
                                    <input type="text" placeholder="Ingrese el apellido "  name="apellido" class="form-control" required>
                                    
                                    <label for="tel"><b>Telefono</b></label>
                                    <input type="text" placeholder="Ingrese el Telefono "  name="telefono" class="form-control" required>
                                    
                                    <label for="uname"><b>Username</b></label>
                                    <input type="text" placeholder="Ingrese el Usuario"  name="usuario" class="form-control" required>

                                    <label for="psw"><b>Password</b></label>
                                    <input type="password" placeholder=" ********* " name="clave" class="form-control" required><br>

                                    <button type="submit" class="btn btn-success btn-block">Registrar</button>                    
                                </div>

                            </form>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <script>
            $(document).ready(function () {
                $("#myBtn1").click(function () {
                    $("#myModal1").modal();
                });
            });
        </script>
        
        <div class="container mt-3">

            <!-- The Modal -->
            <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Inicio de Sesion</h4>
                            <button type="button" class="close" data-dismiss="modal">×</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form class="modal-content animate" action="./../sesion" method="post">
                                <div class="imgcontainer">                   
                                    <center><img src="../images/JJ_J.jpg" alt="Avatar" class="avatar" style="width:25%;"></center>
                                </div>

                                <div class="container">
                                    <label for="uname"><b>Username</b></label>
                                    <input type="text" placeholder="Ingrese el Usuario"  name="usuario" class="form-control" required>

                                    <label for="psw"><b>Password</b></label>
                                    <input type="password" placeholder=" ********* " name="clave" class="form-control" required><br>

                                    <button type="submit" class="btn btn-success btn-block">Ingresar</button>                    
                                </div>

                            </form>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <script>
            $(document).ready(function () {
                $("#myBtn").click(function () {
                    $("#myModal").modal();
                });
            });
        </script>


        <div class="jumbotron text-center" style="margin-bottom:0">
            <p>Footer</p>
        </div>


    </body>
</html>

</body>
</html>
