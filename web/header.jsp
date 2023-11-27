
<div id="principal">
    <style>
      .nav-item a {
        color: #92B8B2; 
        font-weight: 700;
      }
      .contenedor {
        position: fixed;
        width: 100%;
        top: 0px; 
        z-index: 1; 
      }
    </style>
    <div class="contenedor">
      <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid" style="background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);">
          <a class="navbar-brand" href="index.jsp">
            <img src="img/logo3.png" alt="Logo" width="200" height="50" class="d-inline-block align-text-top">
          
          </a>
          <ul class="nav justify-content-end">
            <li class="nav-item">
              <a href="index.jsp" class="nav-link">Comidas</a>
            </li>
            <li class="nav-item">
              <a href="ayuda.jsp" class="nav-link">Ayuda</a>
            </li>
            <li class="nav-item">
              <th:block th:if="${cliente == null}">
                <a href="login.jsp" class="btn" style="background-color: #8ea7a8; color: white;">Iniciar Sesión</a>
              </th:block>
                
                <a href="carrito.jsp" class="btn btn-primary"><i class="bi bi-cart" style="color:white;"></i></a>
              <!--<th:block th:if="${cliente != null}">
                <a th:href="@{/perfil}" class="btn btn" th:text="${cliente.getNombres()}" style=" background-color: #8ea7a8 ;color: white;">Iniciar Sesión</a>
                <a th:href="carrito.jsp" class="btn btn-primary"><i class="bi bi-cart" style="color:white;"></i></a>
                <a th:href="@{/logout}" class="btn btn-danger"><i class="bi bi-box-arrow-left" style="color:white;"></i></a>
              </th:block> -->
            </li>
          </ul>
        </div>
      </nav>
    </div>
  </div>