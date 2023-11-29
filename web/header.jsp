
<%@page import="Modelo.Registrar"%>
<%
    HttpSession sesion = request.getSession();
    
    Registrar usuario =(Registrar)sesion.getAttribute("usuario");
    

%>
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
                       <li class="nav-item dropdown">

                  
                               <%
                                     if (usuario != null ) {
                        %>
                       
                                <a class="nav-link dropdown-toggle rounded" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #8ea7a8; color: white;">
                          <%=usuario.getNombre()%>
                        </a>
                             <%
                                       } else   {
                              %>     <a class="nav-link dropdown-toggle rounded" href="login.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #8ea7a8; color: white; margin-right: 45px">
                            Menu
                        </a>
                                  <%
                           }
                        %>
                    
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <a class="dropdown-item" href="login.jsp">Iniciar Sesion</a>
                             <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="carrito.jsp">Mis Compras</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="login.jsp">Salir</a>
                        </div>
                    </li>     

              
                </ul>
            
            </div>
        </nav>
    </div>
                            
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>