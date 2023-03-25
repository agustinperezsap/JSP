<%-- 
    Document   : index
    Created on : 15 jun. 2022, 16:48:16
    Author     : agust
--%>

<!--ahora vamos a usar el conecepto de directiva
una directiva nos sirve para especificar el tipo
de contedino que vamos a desplegar en el navegador -->

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hola mundo JSPs</title>
    </head>
    <body>
        <h1>Hola mundo JSPs</h1>
        <ul>
            <li> <% out.print("Hola mundo con Scriplets"); %> </li>
            <li> ${"Hola mundo con Expresion Language (EL)"} </li>
            <li> <%= "Hola Mundo con Expresiones" %> </li>
            <li> <c:out value="Hola mundo con JSTL"/> </li>
        </ul>

    </body>
</html>
