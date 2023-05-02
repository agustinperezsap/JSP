<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core</title>
    </head>
    <body>
        <h1>JSTL Core (Jsp Standard Tag Library)</h1>
        <!--Manipulacion de variables-->
        <!--Definimos la variable-->
        <c:set var="nombre" value="Ernesto" />
        <!--Desplegamos el valor de la variable-->
        Variable nombre: <c:out value="${nombre}" />
        <br/>
        <br/><!-- comment -->
        Variable con codigo html: 
        <c:out value="<h4>Hola mundo<h4>" escapeXml="false"/>
        <br/><!-- comment -->
        <br/><!-- comment -->
        <!--Uso de if-->
        <c:set var="bandera" value="true"/>
        
        <c:if test="${bandera}">
            Labandera es Verdadera
            
        </c:if>
        <!--Cidugi condicionado, uso de switch-->
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion == 1}">
                    <br/><!-- comment -->
                    Opcion 1 seleccionada. 
                </c:when>
                <c:when test="${param.opcion == 2}">
                    <br/><!-- comment -->
                    Opcion 2 seleccionada. 
                </c:when>
                <c:otherwise>
                    <br/>
                    Opcion proporcionada desconocida: ${param.opcion}
                </c:otherwise>   
            </c:choose>
        </c:if>
        <!--iterar un arreglo-->
        <%
            String nombres[] = {"Claudia", "Pedro", "Juan"};
            request.setAttribute("nombres", nombres);
        %>
        <br/><!-- comment -->
        Lista de nombres:
        <br/><!-- comment -->
        <ul>
            <c:forEach var="persona" items="${nombres}" >
                <li> ${persona}</li>
            </c:forEach>
        </ul>
        <br/><!-- comment -->
        <<a href="index.jsp">Regresar al inicio</a>
        
        
    </body>
</html>
