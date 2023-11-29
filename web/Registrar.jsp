
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Registrar"%>
<%@page import="Controlador.ControladorRegistrar"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar</title>
    </head>
    <body style="background-color:#C6C8CD;">
    <div class="registrarse">
        <a th:href="login.jsp" class="nav-link">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-x-octagon" viewBox="0 0 16 16">
                <path
                    d="M4.54.146A.5.5 0 0 1 4.893 0h6.214a.5.5 0 0 1 .353.146l4.394 4.394a.5.5 0 0 1 .146.353v6.214a.5.5 0 0 1-.146.353l-4.394 4.394a.5.5 0 0 1-.353.146H4.893a.5.5 0 0 1-.353-.146L.146 11.46A.5.5 0 0 1 0 11.107V4.893a.5.5 0 0 1 .146-.353L4.54.146zM5.1 1 1 5.1v5.8L5.1 15h5.8l4.1-4.1V5.1L10.9 1H5.1z" />
                <path
                    d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
            </svg>
        </a>
        <h1>Registrate</h1>
       <form action="ControladorRegistrar" method="post" enctype="multipart/form-data">
            <label>Nombres</label>
            <input type="text" placeholder="Nombres" name="nombre" />
            <label>Apellidos</label>
            <input type="text" placeholder="Apellidos" name="apellido" />
            <label>Direccion</label>
            <input type="text" placeholder="ubicacion" name="direccion" />
            <label>Correo</label>
            <input type="text" placeholder="correo" name="correo" />
            <label>DNI</label>
            <input type="text" placeholder="DNI" name="dni" />
            <label>Contraseña</label>
            <input type="password" placeholder="Contraseña" name="password" />
           
            <button   class="btnRegistrar" name= "btn">Agregar</button>
            
        </form>

        <p class="login">
            ¿Ya tienes una cuenta? <a href="login.jsp">Inicia sesión aquí</a>
        </p>
    </div>
</body>

<style>
    body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .registrarse {
        width: 100%;
        max-width: 360px;
        background-color: white;
        border-radius: 10px;
        padding: 20px;
        box-sizing: border-box;
    }

    h1 {
        text-align: center;
        font-size: 24px;
        margin-top: 0;
    }

    form label {
        font-size: 18px;
    }

    form input {
        width: 100%;
        padding: 7px;
        border: 1px solid gray;
        border-radius: 6px;
        margin-bottom: 10px;
    }

    .btnRegistrar {
        width: 100%;
        height: 35px;
        border: none;
        background-color: #49c1a2;
        color: white;
        font-size: 18px;
    }

    .login {
        text-align: center;
        color: black;
        font-size: 15px;
        margin-top: 15px;
    }
    .bi-bi-eye{
        /* width:19em; */
        transform: translate(290px,16px);
        /* transform: translateY(5px); */
        /* margin-top: 17px; */
        /* padding-left: 255px; */
        position: relative;
        /* right: 623px;
        bottom:495px; */
        display: inline-block;
        position: absolute;
        cursor: pointer; 
  
    }
</style>

</html>
