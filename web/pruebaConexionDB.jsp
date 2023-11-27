<%-- 
    Document   : pruebaConexion
    Created on : 28 oct. 2023, 02:26:27
    Author     : samir
--%>
<%@page import="beans.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba de conexion a DB</title>
    </head>
    <body>
        <h1>
            <%
                Conexion c = new Conexion();
                int conectado = c.pruebaConexion();
                
                if (conectado==1) {
                    out.print("La conexion ha sido un exito ... estamos listos para la NASA");
                } else {
                    out.print("No se pudo conectar, vaya a jugar a la seleccion");
                }
            %>            
        </h1>
    </body>
</html>


