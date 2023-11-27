<%@page import="Controlador.ControladorBroaster"%>
<%@page import="Modelo.Broaster"%>
<%@page import="java.util.List"%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Broaster</title>
        <%@include file="referencias.jsp" %>
    </head>
    
    <body >
    <!-- Aqui va el menu -->
    <%@include file="header.jsp" %>
    <br>
    <br>
    <br>
    <br>
    <!-- Pestañas -->

    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"> <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                    fill="currentColor" class="bi bi-house" viewBox="0 0 16 16" href="index.jsp">
                    <path
                        d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />
                </svg></li>
                <li class="breadcrumb-item active"><a href="index.jsp" style="text-decoration: none; color: #212529;">Comidas</a></li>
            <li class="breadcrumb-item active" aria-current="page">Broaster</li>
        </ol>
    </nav>

    <h1 class="titulo"> BROASTER </h1>

    <!--contenido de platos-->
    <div class="container mt-3 mb-3">

            <div class="row mb-4 justify-content-center">


                <% ControladorBroaster controladorBroaster = new ControladorBroaster(); %>
                  <% List<Broaster> broasters = controladorBroaster.broasterDAO.obtenerBroaster(); %>

                <% for (Broaster broaster : broasters) { %>

                <div class="col-12 col-lg-4 text-center col-sm-6">
                    <div class="card">
                        <img src="<%= broaster.getImagen() %>" class="card-img-top" alt="...">
                        <div class="card-body">

                            <div class="card-title">
                                <%= broaster.getNombre() %>
                            </div>
                            <div class="card-text">
                                <%= broaster.getDescripcion() %>
                            </div>
                            <div class="price">
                                S/. <%= broaster.getPrecio() %>
                            </div>
                            <a href="#" class="boton">
                                Agregar al carrito
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-cart4" viewBox="0 0 16 16">
                                <path
                                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                                </svg>
                            </a>

                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>

    <%@include file="footer.jsp" %>
</body>
<style>
    body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }
    .card-title {
        font-weight: 700;
    }

    .card-text {
        color: #999;
        font-size: 14px;
        margin-bottom: 10px;
        max-height: 85px;
        line-height: 20px;
        overflow: hidden;
    }

    .price {
        font-weight: 700;
        font-size: 1.15em;
        color: #682a8d;
        margin-bottom: 10px;
    }

    .boton {
        width: 500px;
        color: #682a8d;
        text-decoration: none;
        cursor: pointer;
        font-weight: 700;
        border-top: 1px solid #0c0c0c;
        padding: 10px 20px;
        margin-top: auto;
    }

    h1 {
        width: 75%;
        border-bottom: 2px solid #682a8d;
        margin-left: auto;
        margin-right: auto;
        border-top: 2px solid #682a8d;
        font-size: 35px;
    }

    .row {
        width: 100%;
        display: flex;
        max-width: 1800px;
        border: #111111;
        border-radius: 6px;
        margin-bottom: 30px;
        box-shadow: 0px 1px 10px rgba(0, 0, 0, 0.2);

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
        font-family: 'Lexend Peta', sans-serif;
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


    .card .card-body {
        text-align: center;
    }
</style>

</html>
