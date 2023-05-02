<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL y Variables Implicitas</title>
    </head>
    <body>
        <h1>EL y Variables Implicitas</h1>
        <ul>
            <li>Nombre de la aplicacion: ${pageContext.request.contextPath}</li>
            <li>Navegador del Cliente: ${header["User-Agent"]}</li>
            <li>Id Session: ${cookie.JSESSIONID.value}</li>
            <li>Web Server: ${pageContext.servletContext.serverInfo}</li>
            <li>Valor Parametro: ${param.usuario}</li>
            <li>Valor Parametro: ${param["usuario"]}</li>
        </ul>
        <br/><!-- comment -->
        <br/><!-- comment -->
        <<a href="index.jsp">Regresar al inicio</a>
        
    </body>
</html>
