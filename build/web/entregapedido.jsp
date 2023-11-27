

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        <title>Entrega</title>
           <%@include file="referencias.jsp" %>
    </head>
    <body>
        
        <style> 
        body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }
    .table th,
.table td {
    vertical-align: middle;
}


    </style>
</head>

<body>
 <%@include file="empleadodash.jsp" %>
<div class="container mt-5" style="margin-right: 120px;">
    <div class="row">
    <div class="col-lg-10 mx-auto bg-white p-3 shadow">
        <div class="text-center mb-2">
           
            <div class="col-12">
                <div class="tabpedido">
                    <center>
                        <h1>Entrega Pedido</h1>
                <div class="table-responsive mt-5">
                    <table class="table table-striped">
                        <thead class="text-white"    style="background-color: #8ea7a8;">
                          
                                <tr>
                                    <th>Nº Mesa</th>
                                    <th>Codigo Pedido</th>
                                    <th>Pedido</th>
                                    
                                    <th>Cantidad</th>
                                    <th>Monto Total</th>
                                    <th>Pago</th>
                                    <th></th>

                                </tr>
                        </thead>

                            <tr>
                                <td>1</td>
                                <td>N001</td>
                                <td>Promo 2</td>
                                <td>
                                    <center>1</center>
                                </td>
                                <td>s/25.00</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                               
                                </td>
                                
                        
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>N002</td>
                                <td>Salchi broaster</td>
                                
                                <td>
                                    <center>2</center>
                                </td>
                                <td>s/33.90</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                                </td>
                                
                                
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>N003</td>
                                <td>Promo 4</td>
                              
                                <td>
                                    <center>1</center>
                                </td>
                                <td>s/17.90</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                                </td>
                                
                                 
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>N004</td>
                                <td>Hamburguesa Royal</td>
                             
                                <td>
                                    <center>3</center>
                                </td>
                                <td>s/10.50</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                                </td>
                                
                                
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>N005</td>
                                <td>Hamburguesa de doble carne</td>
                             
                                <td>
                                    <center>2</center>
                                </td>
                                <td>s/21.00</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                                </td>
                                
                                 
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>N006</td>
                                <td>Promo Solitario</td>
                                
                                <td>
                                    <center>1</center>
                                </td>
                                <td>s/16.50</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                                </td>
                                
                                
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>N007</td>
                                <td>Promo Mostrito</td>
                              
                                <td>
                                    <center>2</center>
                                </td>
                                <td>s/20.00</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                                </td>
                                
                                 
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>N008</td>
                                <td>Promo 2 </td>
                               
                                <td>
                                    <center>2</center>
                                </td>
                                <td>s/45.50</td>
                                <td>   
                                    <button id="btnEstado" class="btn btn-change-status"  style="background-color: rgb(255, 85, 85); color: white;">Pagar</button>
                                </td>
                                
                                
                            </tr>
                        </table>
                    <div>
                            
                            <a href="" class="btn"  style="background-color: #8ea7a8; color: white;">Imprimir lista de pedidos</a>
                        </div>
                    </center>
                </div>
            </div>
        </div>
    </div>
      <!-- Scripts al final del body -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
      <script>
   var currentStatus = "Aceptar";

function changeOrderStatus() {
    var btnEstado = document.getElementById("btnEstado");

    switch (currentStatus) {
        case "Aceptar":
            currentStatus = "Proceso";
            btnEstado.innerText = "Proceso";
            btnEstado.style.backgroundColor = "#8ea7a8"; 
            break;
        case "Proceso":
            currentStatus = "Entregado";
            btnEstado.innerText = "Entregado";
            btnEstado.style.backgroundColor = "rgb(255, 85, 85)"; 
            btnEstado.disabled = true;
            break;
    }
}
function resetOrderStatus() {
        currentStatus = "Aceptar";
        var btnEstado = document.getElementById("btnEstado");
        btnEstado.innerText = "Aceptar";
        btnEstado.disabled = false; // Habilita el botón de nuevo
    }
    </script>
    </body>
</html>
