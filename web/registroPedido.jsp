
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Registro Pedido</title>
            <%@include file="referencias.jsp" %>
    </head>
    <body>
        <body class="bg-light">

    <!-- Menú -->
         <%@include file="empleadodash.jsp" %>
    <!-- Contenido principal -->
    <div class="container mt-12" style="margin-right: 120px ;">
        <div class="row">
            <div class="col-lg-10 mx-auto bg-white p-4 shadow">
                <div class="text-center mb-2">
                    <h1>
                        PEDIDO
                    </h1>
                    <br><br>

                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="inputnombre4" class="form-label">Codigo</label>
                        <input type="nombre" class="form-control" id="inputnombre4">
                    </div>
                    <div class="col-md-6">
                        <label for="inputnombre4" class="form-label">Numero de Mesa</label>
                        <input type="nombre" class="form-control" id="inputnombre4">
                    </div>

                    <div class="col-12">
                        <label for="exampleFormControlTextarea1" class="form-label">Descripcion</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>
                    </div>
                </form>

                <div class="text-center mt-4">
                    <button class="btn me-3"    style="background-color: #8ea7a8; color: white;">Agregar</button>
                    <button class="btn me-3"    style="background-color: #8ea7a8; color: white;">Buscar</button>
                    <!-- <button class="btn" style="background-color: rgb(255, 85, 85);   color: white;">Eliminar</button> -->
                </div>

                <div class="table-responsive mt-5">
                    <table class="table table-striped">
                        <thead class="text-white"  style="background-color: #8ea7a8;" >
                            <tr>
                                <th scope="col">N°Mesa</th>
                                <th scope="col">Codigo</th>
                                <th scope="col">Descripcion</th>
                                <th scope="col">Precio</th>
                                <th scope="col"></th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>N001</td>
                                <td>Caldo De Gallina</td>
                                <td>S/.10</td>
                                <td><button class="btn me-3"    style="background-color: #8ea7a8; color: white;">Editar</button></td>
                                <td><button class="btn" style="background-color: rgb(255, 85, 85);   color: white;">Cancelar</button></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>N002</td>
                                <td>Hamburguesa</td>
                                <td>S/.20</td>
                                <td><button class="btn me-3"    style="background-color: #8ea7a8; color: white;">Editar</button></td>
                                <td><button class="btn" style="background-color: rgb(255, 85, 85);   color: white;">Cancelar</button></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>N003</td>
                                <td>6 PIEZAS DE POLLO + PAPAS FRITAS + NUGGETS</td>
                                <td>S/.15</td>
                                <td><button class="btn me-3"    style="background-color: #8ea7a8; color: white;">Editar</button></td>
                                <td><button class="btn" style="background-color: rgb(255, 85, 85);   color: white;">Cancelar</button></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>N004</td>
                                <td>SALCHIPAPA + QUESO FUNDIDO</td>
                                <td>S/.12</td>
                                <td><button class="btn me-3"    style="background-color: #8ea7a8; color: white;">Editar</button></td>
                                <td><button class="btn" style="background-color: rgb(255, 85, 85);   color: white;">Cancelar</button></td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td>N005</td>
                                <td>HAMBURGUESA CONDUNDENTE</td>
                                <td>S/.10</td>
                                <td><button class="btn me-3"    style="background-color: #8ea7a8; color: white;">Editar</button></td>
                                <td><button class="btn" style="background-color: rgb(255, 85, 85);   color: white;">Cancelar</button></td>
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
</html>
