<%-- 
    Document   : ayuda
    Created on : 6 oct. 2023, 22:16:46
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias.jsp" %>
        <title>Ayuda</title>
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
                    fill="currentColor" class="bi bi-house" viewBox="0 0 16 16" href="/">
                    <path
                        d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />
                </svg></li>
            <li class="breadcrumb-item active"><a href="/" style="text-decoration: none; color: #212529;">Principal</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Ayuda</li>
        </ol>
    </nav>

    <h1>PREGUNTAS FRECUENTES</h1>
    <!--empieza el body-->

    <div class="accordion" id="accordionPanelsStayOpenExample">
        <!--PREGUNTA 1-->
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                    aria-controls="panelsStayOpen-collapseOne">
                    ¿Cuál es el menú de Betin Food?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                <div class="accordion-body">
                    En Betin Food ofrecemos una variedad de opciones
                    deliciosas. Nuestro menú incluye pollo broaster, hamburguesas jugosas, bebidas refrescantes y
                    acompañamientos como papas fritas y ensaladas. Puedes consultar el menú completo en nuestra página
                    web o visitando el restaurante.

                </div>
            </div>
        </div>
        <!--PREGUNTA 2-->
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseTwo">
                    ¿Qué es el pollo broaster?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
                <div class="accordion-body">
                    El pollo broaster es una especialidad de Betin Food. Se
                    trata de pollo fresco y crujiente que se cocina en una máquina especial llamada broaster. El proceso
                    de cocción a presión sella los sabores y hace que la piel quede crujiente mientras que la carne se
                    mantiene jugosa y tierna.
                </div>
            </div>
        </div>
        <!--PREGUNTA 3-->
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseThree">
                    ¿Cuáles son las opciones de hamburguesas disponibles?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse">
                <div class="accordion-body">
                    Ofrecemos una amplia
                    selección de hamburguesas en Betin Food. Desde clásicas hamburguesas de queso hasta hamburguesas
                    gourmet con ingredientes especiales. También tenemos opciones vegetarianas y veganas para satisfacer
                    diferentes preferencias.
                </div>
            </div>
        </div>
        <!--PREGUNTA 4-->
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseFour">
                    ¿Qué bebidas ofrecen en Betin Food?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse">
                <div class="accordion-body">
                    Tenemos una variedad de bebidas para acompañar
                    tu comida en Betin Food. Ofrecemos refrescos, aguas, jugos naturales, batidos y opciones de café.
                    Puedes elegir tu bebida favorita para disfrutarla con tu comida.
                </div>
            </div>
        </div>
        <!--PREGUNTA 5-->
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseFive">
                    ¿Aceptan tarjetas de crédito o solo efectivo?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse">
                <div class="accordion-body">
                    Aceptamos tanto tarjetas de crédito
                    como efectivo en Betin Food. Queremos ofrecerte opciones convenientes de pago, por lo que puedes
                    elegir la forma que más te convenga.
                </div>
            </div>
        </div>
        <!--PREGUNTA 6-->
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseSix">
                    ¿Ofrecen servicio de entrega a domicilio?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse">
                <div class="accordion-body">
                    Sí, ofrecemos servicio de entrega a
                    domicilio. Puedes realizar tu pedido a través de nuestra página web, aplicación móvil o llamando a
                    nuestro número de entrega a domicilio. Te llevaremos la comida caliente y deliciosa directamente a
                    tu puerta.
                </div>
            </div>
        </div>
        <!--PREGUNTA 7-->
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseSeven" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseSeven">
                    ¿Cuál es el horario de atención de Betin Food?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse">
                <div class="accordion-body">
                    Nuestro horario de atención es de
                    lunes a domingo, de 10:00 a.m. a 10:00 p.m. Estamos abiertos todos los días para satisfacer tus
                    antojos de comida rápida.
                </div>
            </div>
        </div>

    </div>


    <%@include file="footer.jsp" %>

</body>

<style>
    body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }

    h1 {
        text-align: center;
        margin-bottom: 50px;
        font-size: 48px;
    }

    .accordion {

        background-color: #f2f2f2;
        margin-bottom: 40px;
        box-shadow: 0px 1px 10px rgba(0, 0, 0, 0.2);
        --bs-accordion-bg: #dee2e6;
        margin: 50px auto;
        width: 80%;

    }

    h2.accordion-header {
        text-align: left;
    }

    .accordion-header button {
        font-size: 20px;
        font-weight: bold;
    }

    .accordion-body {
        font-size: 18px;
    }
</style>
</html>
