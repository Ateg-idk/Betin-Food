<%-- 
    Document   : Acercade
    Created on : 6 oct. 2023, 21:54:17
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias.jsp" %>
        <title>Acerca de</title>
    </head>
    <style>
  body {
    background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
    font-family: 'Quicksand', sans-serif;
  }

  .carousel {
    max-width: 800px;
    max-height: 400px;
    margin-bottom: 200px;
    margin-left: auto;
    margin-right: auto;
  }

  h1 {
    text-align: center;
    margin-top: 10px;
    margin-bottom: 10px;
    font-size: 48px;
  }
</style>

<body style="background-color:#C6C8CD;">
  <%@include file="header.jsp" %>
  <br>
  <br>
  <br>
  <br>
  <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
    <ol class="breadcrumb">

      <li class="breadcrumb-item"> <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
          class="bi bi-house" viewBox="0 0 16 16" href="/">
          <path
            d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />

        </svg></li>
      <li class="breadcrumb-item active"><a href="/" style="text-decoration: none; 
          color: #212529;">Principal</a></li>
      <li class="breadcrumb-item active" aria-current="page">Acerca de</li>

    </ol>
  </nav>
  <h1>Acerca de</h1>
  <div class="container">

    <div id="carouselExample" class="carousel slide">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/carrusel1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="img/carrusel2.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="img/carrusel3.jpg" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <br>
    <div class="card">
      <div class="card-body" style="margin-top: 10px;">
        <p style="text-align: justify;">

          Betin Food es un vibrante y acogedor restaurante de comida rápida que ha ganado popularidad por sus sabrosos
          platos y excelente servicio. Ubicado en el corazón de la ciudad, Betin Food ofrece una amplia variedad de
          opciones deliciosas y frescas que son perfectas para aquellos que buscan una comida rápida y satisfactoria. En
          este artículo, exploraremos la historia, el menú y el ambiente único que hacen de Betin Food un lugar
          destacado en el mundo de la comida rápida.
          Fundado en 2010 por el emprendedor Luis Pariona, Betin Food comenzó como un pequeño puesto de comida
          callejera. Con el tiempo, el éxito y la popularidad del lugar crecieron rápidamente, lo que llevó a González a
          abrir un local permanente para satisfacer la creciente demanda. Con un enfoque en ingredientes frescos y
          recetas caseras, Betin Food ha logrado mantener su calidad y sabor distintivo a lo largo de los años.
          El menú de Betin Food es diverso y satisfará todos los antojos. Ya sea que desees una hamburguesa jugosa, unas
          papas fritas crujientes o un refrescante batido, Betin Food tiene todo lo que necesitas. Sus platos estrella
          incluyen la "Betin Burger", una hamburguesa con carne de res jugosa, queso fundido, lechuga fresca y una
          selección de salsas caseras. También puedes probar las "Betin Fries", papas fritas crujientes y doradas
          servidas con una variedad de condimentos. Para los amantes de los batidos, Betin Food ofrece una amplia
          selección de sabores, desde los clásicos de chocolate y vainilla hasta combinaciones más atrevidas como fresa
          con mango.

        </p>
      </div>
    </div>

    <br>
    <div>
      <img src="img/acerdade2.jpg" width="400" height="200" style="float:left ;margin-right: 10px ;">

      <div style="margin-bottom: 20px;">
        <div class="card">
          <div class="card-body">
            <p style=" text-align: left;">
              El ambiente en Betin Food es acogedor y relajado, con un diseño moderno y vibrante que invita a los
              clientes a quedarse y disfrutar de su comida. El espacio está decorado con colores llamativos y obras de
              arte únicas, creando una atmósfera alegre y animada. Ya sea que vengas solo, con amigos o en familia,
              Betin Food ofrece un ambiente adecuado para cualquier ocasión.
              El servicio al cliente es una prioridad en Betin Food. El personal amable y atento está siempre dispuesto
              a ayudar a los clientes a elegir entre las opciones del menú y garantizar que su experiencia sea lo más
              placentera posible. Los pedidos se preparan rápidamente y se sirven con eficiencia, lo que es
              especialmente importante para aquellos que buscan una comida rápida durante su pausa para el almuerzo o en
              un día ocupado.
              Betin Food es un destino de comida rápida que destaca por su delicioso menú, ambiente acogedor y servicio
              excepcional. Ya sea que estés buscando una hamburguesa satisfactoria, unas papas fritas crujientes o un
              refrescante batido, Betin Food seguramente cumplirá tus expectativas. No importa si deseas disfrutar de tu
              comida en el local o llevarla contigo, Betin Food te brinda una experiencia gastronómica memorable.

            </p>
          </div>
        </div>
      </div>

    </div>


  </div>
  <%@include file="footer.jsp" %>
  
</body>
</html>
