<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejemplo MVC</h1>
        <b/><!-- en lugar de usar el nombre de la aplicaion se empieza a usar el contextPath -->
        <!--para ello usamos EL-->
        <a href="${pageContext.request.contextPath}/ServletControlador">
            Link al servlet controlador que despliega las variables
        </a>
    </body>
</html>
