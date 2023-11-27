<%-- 
    Document   : acceso
    Created on : 7 oct. 2023, 03:51:50
    Author     : Fabian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String logueado = "";
            logueado = (String)sesion.getAttribute("logueado");
            
            if (logueado!=null && logueado.equals("OK")) {
                out.println("<h1  style='color:blue'>Usuario autorizado</h1>");
            } else {
                out.println("<h1 style='color:red'>Usuario no autorizado</h1>");
            }            
        %>
    </body>
</html>
