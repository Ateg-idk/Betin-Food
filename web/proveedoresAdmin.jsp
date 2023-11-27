<%-- 
    Document   : proveedoresAdmin
    Created on : 7 oct. 2023, 00:59:19
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proveedores</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body class="bg-light">

    <%@include file="menuizquierdo.jsp" %>

    <!-- Contenido principal -->
    <div id="proveedor" class="container mt-5" style="margin-right: 120px; position: fixed; margin-left: 420px">
        <div class="row">
            <div class="col-lg-10 mx-auto bg-white p-4 shadow">
                <div class="text-center mb-4">
                    <h1>
                        PROVEEDOR
                    </h1>
                    <img src="IconoCargar.jpg" width="200px" class="rounded" alt="...">
                </div>

                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="inputnombre4" class="form-label">Nombre Proveedor</label>
                        <input type="nombre" class="form-control" id="inputnombre4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">RUC</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputnombre4" class="form-label">Insumos</label>
                        <input type="nombre" class="form-control" id="inputnombre4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">Precio</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>
                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">Cantidad</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>
                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">Razon Social</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>

                    <div class="col-12">
                        <label for="exampleFormControlTextarea1" class="form-label">Descripcion</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>
                    </div>
                </form>

                <div class="text-center mt-4">
                    <button class="btn me-3" style="background-color: #8ea7a8; color: white;">Agregar</button>
                    <button class="btn btn" style="background-color: rgb(255, 85, 85); color: white;">Eliminar</button>
                </div>

                <div class="table-responsive mt-5">
                    <table class="table table-striped"  >
                        <thead class="text-white"   style="background-color: #8ea7a8;">
                            <tr>
                                <th scope="col">Ruc</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Insumos</th>
                                <th scope="col">Descripcion</th>
                                <th scope="col">Razon Social</th>
                                <th scope="col">Cantidad</th>
                                <th scope="col">Precio</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>BetoSac</td>
                                <td>Pollo</td>
                                <td>Cell 1</td>
                                <td>Cell 2</td>
                                <td>20</td>
                                <td>S/.10</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>BetoSac</td>
                                <td>Carne</td>
                                <td>Cell 2</td>
                                <td>Cell 2</td>
                                <td>10</td>
                                <td>S/.20</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>BetoSac</td>
                                <td>Gaseosas</td>
                                <td>Cell 3</td>
                                <td>Cell 2</td>
                                <td>40</td>
                                <td>S/.15</td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>BetoSac</td>
                                <td>Queso</td>
                                <td>Cell 4</td>
                                <td>Cell 2</td>
                                <td>50</td>
                                <td>S/.12</td>
                            </tr>
                            <tr>    
                                <th scope="row">5</th>
                                <td>BetoSac</td>
                                <td>Papas</td>
                                <td>Cell 5</td>
                                <td>Cell 2</td>
                                <td>40</td>
                                <td>S/.10</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<style>
 body {
    font-family: 'Quicksand', sans-serif;
}

.table th,
.table td {
    vertical-align: middle;
}

</style>
    <!-- Scripts al final del body -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>

<style>
        body {
            background-image: url('https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png');
            font-family: 'Quicksand', sans-serif;
        }
    </style>

</html>
