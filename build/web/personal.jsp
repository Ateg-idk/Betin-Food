<%-- 
    Document   : personal
    Created on : 7 oct. 2023, 00:48:21
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JPersonal</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body class="bg-light">
    <%@include file="menuizquierdo.jsp" %>    
    <!-- Contenido principal -->
 <div class="container mt-5" style="margin-right: 120px; position: fixed; margin-left: 450px">
        <div class="row">
            <div class="col-lg-10 mx-auto bg-white p-4 shadow">
                <div class="text-center mb-4">
                    <H1>GESTION PERSONAL</H1>

                    <img src="img/IconoCargar.jpg" width="200px" class="rounded" alt="...">
                </div>

                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="inputnombre4" class="form-label">DNI</label>
                        <input type="nombre" class="form-control" id="inputnombre4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">Nombre</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputnombre4" class="form-label">Apellido</label>
                        <input type="nombre" class="form-control" id="inputnombre4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">Direccion</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">Telefono</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>

                    <div class="col-md-6">
                        <label for="inputcodigo4" class="form-label">Zip</label>
                        <input type="codigo" class="form-control" id="inputcodigo4">
                    </div>
                </form>

                <div class="text-center mt-4">
                    <button class="btn me-3" style="background-color: #8ea7a8; color: white;">Agregar</button>
                    <button class="btn" style="background-color: rgb(255, 85, 85); color: white;">Eliminar</button>
                </div>

                <div class="table-responsive mt-5">
                    <table class="table table-striped">
                        <thead class="text-white"   style="background-color: #8ea7a8;">
                            <tr>
                                <th scope="col">DNI</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Direccion</th>
                                <th scope="col">Telefono</th>
                                <th scope="col">Zip</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">733990827</th>
                                <td>Renzo</td>
                                <td>Huamani</td>
                                <td>Jr. Los Amautas N° 180 – Urb. Zárate</td>
                                <td>923023112</td>
                                <td>15923</td>
                            </tr>
                            <tr>
                                <th scope="row">733990827</th>
                                <td>Fabian</td>
                                <td>Sosa</td>
                                <td>Jr. Los Amautas N° 185</td>
                                <td>923023125</td>
                                <td>15923</td>
                            </tr>
                            <tr>
                                <th scope="row">733990827</th>
                                <td>Luis</td>
                                <td>Pariona</td>
                                <td>Jr. Los Amautas N° 180 – Urb. Zárate</td>
                                <td>925723112</td>
                                <td>15923</td>
                            </tr>
                            <tr>
                                <th scope="row">733990827</th>
                                <td>Angelo</td>
                                <td>Oro</td>
                                <td>Jr. Los Amautas N° 180 – Urb. Zárate</td>
                                <td>973023116</td>
                                <td>15923</td>
                            </tr>
                            <tr>
                                <th scope="row">733990827 </th>
                                <td>Gabriel</td>
                                <td>Lozana</td>
                                <td>Jr. Los Amautas N° 180 – Urb. Zárate</td>
                                <td>927028112</td>
                                <td>15923</td>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts al final del body -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
<style>
 body {
     background-image: url('https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png');
    font-family: 'Quicksand', sans-serif;
}

.table th,
.table td {
    vertical-align: middle;
}

</style>
</html>
