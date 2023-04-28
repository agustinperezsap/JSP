<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con Scriptlets</title>
    </head>
    <body>
        <h1>JSP con Sciptlets</h1>
        <br><!-- los siguientes conmentarios no se visualizan en el navegador -->
        <%-- Scriptlets para enviar informacion al navegador --%>
        <%
            out.print("Saludos desde un Scriptlets");
        %>
        <%-- Scriptlet para manipular los objetos inplicitos --%>
        <% 
            String nombreAplicaion = request.getContextPath();
            out.print("Nombre de la aplicacion: " + nombreAplicaion);
        %>
        <br>
        <%-- Scriptlet con codigo condicionado --%>
        <% 
            if(session != null && session.isNew()){
        %>
        La sesion SI es nueva
        <% 
            }else if(session != null){
        %>
        La sesion No es nueva
        <% 
            } 
        %>
        <br>
        <<a href="index.html">Regresar al inicio</a>
        
    </body>
</html>
