<%-- 
    Document   : reportes
    Created on : 7 oct. 2023, 00:57:39
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body >
<%@include file="menuizquierdo.jsp" %>
        

<div class="container mt-5" style="margin-right: 120px; position: fixed; margin-left: 420px">
    <div class="row">
    <div class="col-lg-11 mx-auto bg-white p-3 shadow">
        <div class="text-center mb-2">
           
            <div class="col-12">
                <div class="contenedor">
                    <h1>REPORTE DE VENTAS</h1>
                    <div class="datos">
                        <label for="">Fecha de Inicio</label>
                        <input type="date" />
                        <label for="">Fecha fin</label>
                        <input type="date" />

                        <button class="btn"  style="background-color: #8ea7a8; color: white;">Buscar</button>
                        <button class="btn" style="background-color: rgb(255, 85, 85); color: white;">Limpiar</button>
                    </div>
                </div>
                <center>

                
                    <div class="table-responsive mt-5">
                        <table class="table table-striped">
                            <thead class="text-white"   style="background-color: #8ea7a8;">
           
                        <tr>
                            <th class="title" scope="col">#</th>
                            <th class="title" scope="col">Fecha</th>
                            <th class="title" scope="col">Direccion de Entrega</th>
                            <th class="title" scope="col">Cantidad</th>
                            <th class="title" scope="col">Precio</th>
                            <th class="title" scope="col">Total</th>
                            <th class="title" scope="col">Descargar PDF</th>
                            <th class="title" scope="col">Descargar Excel</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>05/05/2023</td>
                            <td>Av. 5 Canto Grande</td>
                            <td>2</td>
                            <td>S/.20.00</td>
                            <td>S/.40.00</td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar PDF</button></td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar Excel</button></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>05/05/2023</td>
                            <td>Av. Las flores Paradero 3</td>
                            <td>2</td>
                            <td>S/.20.00</td>
                            <td>S/.40.00</td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar PDF</button></td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar Excel</button></td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>05/05/2023</td>
                            <td>Av. Las flores Paradero 15</td>
                            <td>5</td>
                            <td>S/.30.00</td>
                            <td>S/.150.00</td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar PDF</button></td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar Excel</button></td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>05/05/2023</td>
                            <td>Av. Las flores Paradero 10</td>
                            <td>1</td>
                            <td>S/.10.00</td>
                            <td>S/.10.00</td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar PDF</button></td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar Excel</button></td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>05/05/2023</td>
                            <td>Av. Las flores Paradero 10</td>
                            <td>8</td>
                            <td>S/.15.00</td>
                            <td>S/.120.00</td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar PDF</button></td>
                            <td><button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Descargar Excel</button></td>
                        </tr>
                    </tbody>
                </table></center>
            </div>
            </div>
        </div>
    </div>
    </div>
</body>
<style>
        body {
            background-image: url('https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png');
            font-family: 'Quicksand', sans-serif;
        }
    </style>
</html>
