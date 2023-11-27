<%-- 
    Document   : detallePedido
    Created on : 6 oct. 2023, 23:55:48
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Pedido</title>
        <%@include file="referencias.jsp" %>
    </head>
    
    <body style="background-color:#C6C8CD;">

    <!-- Aqui va el menu -->
    <%@include file="header.jsp" %>
    <div class="container " style="margin-top: 6rem;">
        <div class="row justify-content-center">
            <div class="col-10">
                <center>
                    <h1 class="titulo">Pedido # 001686242</h1>
                    <div class="pedido-container">
                        <table style="margin-bottom: 1rem;">
                            <tr>
                                <th>Producto</th>
                                <th>Cantidad</th>
                                <th>Precio</th>

                            </tr>
                            <tr>
                                <td>Combo alitas broaster + aji de casa + gaseosa de 2L </td>
                                <td>1</td>
                                <td>S/.19.99</td>
                            </tr>
                            <tr>
                                <td>COMBO MOSTRITO + PECHUGA DE POLLO + GASEOSA + ENSALADA </td>
                                <td>1</td>
                                <td>S/.24.99</td>
                            </tr>
                            <tr>
                                <td>2 HAMBURGUESAS CON DOBLE CARNE PARRILLERA + 2 PATAS MEDIANAS + GASEOSA+ HELADO DE
                                    VAINILLA</td>
                                <td>1</td>
                                <td>S/.14.99</td>
                            </tr>
                        </table>

                        <div class="subtotal">Subtotal: S/59.97</div>
                        <div class="envio">Cargo de Envío: S/5.00</div>
                        <div class="total">Total: S/64.97</div>
                    </div>
                </center>
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
        .pedido-container {
            width: 700px;
            margin: 30px auto;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 20px;
            background-color: #f9f9f9;
        }

        .titulo {
            
            font-size: 20px;
            font-weight: bold;
            font-size: 52px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th,
        td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        .total {
            font-weight: bold;
            text-align: right;
            margin-top: 10px;
        }

        .subtotal {
            text-align: right;
        }

        .envio {
            text-align: right;
        }
    </style>
    
</html>
