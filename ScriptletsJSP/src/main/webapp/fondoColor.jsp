<!DOCTYPE html>
<%
    String fondo = request.getParameter("colorFondo");
    if (fondo == null || fondo.trim().equals("")) {
           fondo = "white";
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP cambio de Color</title>
    </head>
    <body bgcolor="<%= fondo %>">
        <h1>Hello World!</h1>
        <br>
        Color de fondo aplicado: <%= fondo %>
        <br>
        <<a href="index.html">Regresamos al Inicio</a>
    </body>
</html>
