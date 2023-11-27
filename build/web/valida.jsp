<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencia.jsp" %>
    </head>
    <body>
        <%
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            String mensaje = null;
            HttpSession sesion = request.getSession();
            Integer contadorVisitas = (Integer)sesion.getAttribute("contadorVisitas");
            
            if ((usuario.equals("admin") && password.equals("123456")) || 
                (usuario.equals("cliente") && password.equals("1234")) ||
                (usuario.equals("empleado") && password.equals("1234"))) {                       
                if (contadorVisitas == null) {
                    contadorVisitas = 1;
                    mensaje = "Bienvenido por primera vez";
                } else {
                    mensaje = "Bienvenido nuevamente, usted nos ha visitado " +contadorVisitas+" veces" ;
                    contadorVisitas++;
                }
                sesion.setAttribute("logueado","OK");
                sesion.setAttribute("contadorVisitas", contadorVisitas);
                sesion.setMaxInactiveInterval(3600);
        %>
            <center>
                <div class="login">
                    <div class="card">
                        <div class="card-body"> 
                            <img src="img/logo.png" width="35%" class="rounded-circle"/>
                            <h1 style="color:green;" >Validado</h1>
                            <p><%= mensaje %></p>
                            <%
                                if (usuario.equals("admin")) {
                            %>
                                    <h6>ADMINISTRADOR</h6>
                                    <a href="dashboard.jsp" class="btn1" type="submit" style="padding: 7px 12px;border-radius: 5px;color: white;font-weight: bold;text-decoration: none;text-align: center;background-color: #617070;margin-right: 5px;">Ingresar</a>
                            <%
                                } else if (usuario.equals("empleado")) {
                            %>
                                    <h6>EMPLEADO</h6>
                                    <a href="registroPedido.jsp" class="btn1" type="submit" style="padding: 7px 12px;border-radius: 5px;color: white;font-weight: bold;text-decoration: none;text-align: center;background-color: #617070;margin-right: 5px;">Ingresar</a>
                            <%
                                } else if (usuario.equals("cliente")) {
                            %>
                                    <h6>CLIENTE</h6>
                                    <a href="index.jsp" class="btn1" type="submit"style="padding: 7px 12px;border-radius: 5px;color: white;font-weight: bold;text-decoration: none;text-align: center;background-color: #617070;margin-right: 5px;">Ingresar</a>
                            <%
                                }
                            %>
                        </div>                    
                    </div>
                </div>
            </center>
        <%
            } else {
        %>
            <h1 style="color:red;">Usuario no validado</h1>
        <%
                //Thread.sleep(1000);
                response.sendRedirect("index_login.jsp");
            }
        %>
    </body>
</html>
