<%-- 
    Document   : pedidoCliente
    Created on : 6 oct. 2023, 23:53:20
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body>

        <!-- Aqui va el menu -->
        <%@include file="header.jsp" %>
        <div class="container " style="margin-top: 6rem;">
            <div class="row justify-content-center">
                <div class="col-10"><center>
                    <h1>Mis Pedidos</h1>
    
                    <div class="table-responsive mt-5">
                      <table class="table table-striped">
                          <thead class="text-white"  style="background-color: #8ea7a8;" >
                    
                        <tr>
                        <th class="title" scope="col">Pedido #</th>
                        <th class="title" scope="col">Fecha</th>
                        <th class="title" scope="col">Direccion de Entrega</th>
                        <th class="title" scope="col">Total</th>
                        <th class="title" scope="col">Estatus</th>
                        <th class="title" scope="col">Accion</th>
                        </tr>

                    </thead>

                    <tbody>
                        <tr>
                        <th scope="row">001686242</th>
                        <td>05/05/2023</td>
                        <td>Av. 5 Canto Grande</td>
                        <td>S/.40.00</td>
                        <td>Pedido Entregado</td>
                        <td><a href="detallePedido.jsp">Ver Pedido</a></td>
                        </tr>
                        <tr>
                        <th scope="row">001686242</th>
                        <td>05/05/2023</td>
                        <td>Av. Las flores Paradero 3</td>
                        <td>S/.40.00</td>
                        <td>Pedido Entregado</td>
                        <td><a href="detallePedido.jsp">Ver Pedido</a></td>
                        </tr>
                        <tr>
                        <th scope="row">001542842</th>
                        <td>05/05/2023</td>
                        <td>Av. Las flores Paradero 15</td>
                        <td>S/.150.00</td>
                        <td>Pedido Entregado</td>
                        <td><a href="detallePedido.jsp">Ver Pedido</a></td>
                        </tr>
                        <tr>
                        <th scope="row">001686543</th>
                        <td>05/05/2023</td>
                        <td>Av. Las flores Paradero 10</td>
                        <td>S/.10.00</td>
                        <td>Pedido Entregado</td>
                        <td><a href="detallePedido.jsp">Ver Pedido</a></td>
                        </tr>
                        <tr>
                        <th scope="row">001218587</th>
                        <td>05/05/2023</td>
                        <td>Av. Las flores Paradero 10</td>
                        <td>S/.120.00</td>
                        <td>Pedido Entregado</td>
                        <td><a href="detallePedido.jsp">Ver Pedido</a></td>
                        </tr>
                        <tr>
                            <th scope="row">008765587</th>
                            <td>05/05/2023</td>
                            <td>Av. Las flores Paradero 10</td>
                            <td>S/.120.00</td>
                            <td>Pedido Entregado</td>
                            <td><a href="detallePedido.jsp">Ver Pedido</a></td>
                        </tr>
                    </tbody>
                    </table></center>
                </div>
                </div>
            </div>
        </div>
        <br><br><br><br><br><br><br><br>
        <%@include file="footer.jsp" %>

    </body>
    
    <style>
           body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }
            h1{
              text-align: center;
              padding:30px;
              font-size: 48px;
            }
            .tabla {
              width: 950px;
              height: 320px;
              background-color: #8ea7a8;
              
            }
            table .title{
              background-color: #6c8a8b;
              font-size: 18px;
            }
            body{
              font-family: 'Calistoga', cursive;
            }
          </style>
    
</html>
