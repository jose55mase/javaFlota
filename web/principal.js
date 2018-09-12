$(document).ready(function(){
    $("#verUsuarioLista").hide();
    $("#crearUsuarioCrear").hide();
    
    
    $("#verUsuario").click(function(){
        $("#verUsuarioLista").show(3000);
        $("#crearUsuarioCrear").hide(3000);
    });
    
    $("#crearUsuario").click(function(){
        $("#crearUsuarioCrear").show(3000);
        $("#verUsuarioLista").hide(3000);
    });
});