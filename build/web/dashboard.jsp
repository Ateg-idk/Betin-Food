<%-- 
    Document   : dashboard
    Created on : 7 oct. 2023, 00:20:29
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <%@include file="referencias.jsp" %>
    </head>
    
    <body>
        <%@include file="menuizquierdo.jsp" %>
    

   
        <div class="container justify-content-center" style="margin-top:0rem; margin-right: 120px;">
            <div class="row text-center">
                <div class="col-12">
                    <h1 class="text-center">Bienvenido al sistema de administración de la tienda</h1>
                </div>
                <div class="col-10 container " style="margin-top:15px;">
                        <div class="row justify-content-center" style="">
                            <div class="col-3 text-center border border-dark shadow p-3 mb-5 rounded" style="margin-right: 13px;background-color: red;border-top-width: 10px;">
                                <span >
                                    <i class="bi bi-cart-plus" style="font-size: 3rem; color:white;"></i>
                                    <span style="font-size: 2rem; color:white;" class="text-center">1125</span>
                                </span>
                                <p style="font-size: 1rem; color:white;">TOTAL ORDENDES</p>
                            </div>
                            <div class="col-3 text-center border border-dark shadow p-3 mb-5 rounded" style="margin-right: 13px;background-color: green;border-top-width: 10px;">
                                <span >
                                    <i class="bi bi-person-circle" style="font-size: 3rem; color:white;"></i>
                                    <span style="font-size: 2rem; color:white;" class="text-center">1125</span>
                                </span>
                                <p style="font-size: 1rem; color:white;">CLIENTES</p>
                            </div>
                            <div class="col-3 text-center border border-dark shadow p-3 mb-5 rounded" style="background-color: gray;border-top-width: 10px;">
                                <span >
                                    <i class="bi bi-eye-fill" style="font-size: 3rem; color:white;"></i>
                                    <span style="font-size: 2rem; color:white;" class="text-center">1125</span>
                                </span>
                                <p style="font-size: 1rem; color:white;">VISITAS</p>
                            </div>
                        </div>
                    
                </div>
                <div class="col-10 container">
                    <div class="row justify-content-center border border-dark " style="background-color:ghostwhite;">
                        <canvas class="col-6" id="myChart" width="400" ></canvas>
                    </div>
                </div>
                <div class="col-10 container " style="margin-top:15px;margin-bottom:15px;">
                    <div class="row justify-content-center border border-dark" style="background-color: cadetblue;">
                        <div class="col-12 text-left" style="border-top-width: 10px;">
                            
                            <p style="font-size: 1rem; color:white;">ESTADO DE ORDENES</p>
                        </div>
                        <div class="col-3 text-center border border-dark shadow p-3 mb-5 rounded" style="margin-right: 13px;background-color: red;border-top-width: 10px;">
                            <span >
                                <i class="bi bi-hourglass-top" style="font-size: 3rem; color:white;"></i>
                                <span style="font-size: 2rem; color:white;" class="text-center">23</span>
                            </span>
                            <p style="font-size: 1rem; color:white;">PENDIENTES</p>
                        </div>
                        <div class="col-3 text-center border border-dark shadow p-3 mb-5 rounded" style="margin-right: 13px;background-color: orange;border-top-width: 10px;">
                            <span >
                                <i class="bi bi-egg-fried" style="font-size: 3rem; color:white;"></i>
                                <span style="font-size: 2rem; color:white;" class="text-center">12</span>
                            </span>
                            <p style="font-size: 1rem; color:white;">PREPARANDO</p>
                        </div>
                        <div class="col-3 text-center border border-dark shadow p-3 mb-5 rounded" style="background-color: green;border-top-width: 10px;">
                            <span >
                                <i class="bi bi-stopwatch" style="font-size: 3rem; color:white;"></i>
                                <span style="font-size: 2rem; color:white;" class="text-center">2</span>
                            </span>
                            <p style="font-size: 1rem; color:white;">LISTO</p>
                        </div>
                    </div>
                
                </div>
            </div>
        </div>
    
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
            
            const ctx = document.getElementById('myChart');
            const meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'];
            const ventas = [50, 100, 200, 140, 198, 205, 250, 240, 400, 350, 320, 350];

            const myChart = new Chart(ctx,{
                type: 'bar',
                data:{
                    labels: meses,
                    datasets:[{
                        label: 'Ventar por mes',
                        data: ventas,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(255, 159, 64, 0.2)',
                            'rgba(255, 205, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(54, 162, 235, 0.2)'
                        ],
                        borderColor: [
                            'rgb(255, 99, 132)',
                            'rgb(255, 159, 64)',
                            'rgb(255, 205, 86)',
                            'rgb(75, 192, 192)',
                            'rgb(54, 162, 235)'
                        ],
                        order: 2},
                        {
                            label: 'linea venta por mes',
                            data: ventas,
                            type: 'line',
                            order: 1
                        }]
                }
            })
        </script>
    </body>
    <style>
        body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
        }
        </style>
        
</html>
