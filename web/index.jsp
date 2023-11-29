
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias.jsp" %>
        <title>Principal</title>
    </head>
    
    <body>
    <!-- Aqui va el menu -->
    <%@include file="header.jsp" %>
    <br>
    <br>
    <br>
    <br>
    <div class="container mt-3 mb-3" style="margin-top: 50px;">
        <div class="row">
            <div class="col-12 col-md-5">
                <h1 class="text-dark">Betin Food</h1>
                <p>
                    ¡Bienvenidos a Betin Food, tu destino culinario para satisfacer tus antojos rápidos y deliciosos!
                    Somos una vibrante empresa de comida rápida dedicada a brindarte una experiencia gastronómica
                    excepcional. Nuestro enfoque está en fusionar sabores auténticos con ingredientes frescos y de
                    calidad, creando platos sabrosos que deleitarán tu paladar.
                </p>
            </div>

            <div class="col-12 col-md-7 d-flex justify-content-center align-items-center">
                <img class="img-fluid" src="img/logo2.png" alt="Logo de Betin Food" style="max-width: 300px; height: auto;">
            </div>
        </div>
    </div>


    <!-- Partes de las comidas -->
    <br>

    <h2 class="titulo"> COMIDAS </h2>

    <br>



    <div class="container mt-3 mb-3">

        <div class="row mb-6 justify-content-center">

            <div class="col-12 col-lg-6 text-center col-xl-6">
                <div class="card">
                    <img src="img/prmo.jpg" class="card-img-top " width="300px" height="270px" alt="...">
                    <div class="card-body">
                        <a href="promos.jsp" class="btn btn" style="background-color: #8ea7a8; color: white;">Promos</a>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-6 text-center ">
                <div class="card">
                    <img src="img/poshito.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="Broaster.jsp" class="btn btn" style="background-color: #8ea7a8; color: white;">Broaster</a>
                    </div>
                </div>
            </div>


            <div class="col-12 col-lg-6 text-center col-xl-6">
                <div class="card">
                    <img src="img/anvorugesa-con-mono-XD.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="hamburguesas.jsp" class="btn btn" style="background-color: #8ea7a8; color: white;">Hamburguesas</a>
                    </div>
                </div>
            </div>


            <div class="col-12 col-lg-6 text-center col-xl-6">
                <div class="card">
                    <img src="img/bebidasmono.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="bebidas.jsp" class="btn btn" style="background-color: #8ea7a8; color: white;">Bebidas</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Footer Contacto -->

    <br>


    <%@include file="footer.jsp" %>

</body>

<style>
    .row {
        width: 100%;
        display: flex;
        max-width: 750px;
        border: #111111;
        border-radius: 6px;
        margin-bottom: 30px;
        margin-left: 270px;
        box-shadow: 0px 1px 10px rgba(0, 0, 0, 0.2);

    }

    body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }

    .card {
        width: 100%;
        max-width: 300px;
        margin-right: 15px;
        margin-top: 5px;
        margin: 20px;
        border-radius: 6px;
        overflow: hidden;
        /*todo elemento fuera se oculta*/
        background: #ffffff;
        box-shadow: 0px 1px 10px rgba(0, 0, 0, 0.2);
        cursor: default;
    }

    .card:hover {
        /*cuando se pasa el cursor*/
        box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.4);
        transform: translateY(-3%);
        /*se eleva para arriva el card*/
    }

    .card-text {
        text-align: center;
    }

    .titulo {
        text-align: center;
        margin-bottom: 50px;
        font-size: 48px;
        
    }

    .cabecera {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;

    }

    .card img {
        width: 100%;
        height: 250px;
    }

    .card-text {
        padding: 15px;
    }

    .card .card-body a {

        margin-top: 10px;
    }

    .card .card-body a:hover {

        background-color: rgb(56, 105, 133);
    }

    .card .card-body {
        text-align: center;
    }

    .title {
        width: 100%;
        display: flex;
        max-width: 800px;
        margin-left: 270px;

    }

    h2 {
        width: 700px;
        border-bottom: 2px solid #682a8d;
        margin-left: auto;
        margin-right: auto;
        border-top: 2px solid #682a8d;
        
        font-size: 35px;
    }
</style>
</html>
