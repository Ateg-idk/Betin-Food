<div class="contenedorGeneral">
    <div class="contenedor">

                <div class="imagen">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="img/logo.png">
                    </a>
                </div>
                <form action="valida.jsp" method="post">
                <div class="login">
                    
                    <h4> BETIN FOOD</h4>
                    <hr>
                    <br>
                    <div class="name_pass">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="50" fill="currentColor"
                            class="bi-bi-person-fill" viewBox="0 0 16 16">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                        </svg>
                        <input type="text" name="usuario" class="textbox">
                    </div>  
                <div class="name_pass">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="50" fill="currentColor"
                            class="bi-bi-key-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                        </svg>
                        
                        <input type="password" name="password"  class="pass">
                    <!-- <svg xmlns="http://www.w3.org/2000/svg" color="black" width="16" height="16" fill="currentColor" class="bi-bi-eye" viewBox="0 0 16 16">
                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                      </svg> -->
                </div>
                        

                    <div class="boton">
                        <input type="submit" value="Ingresar" class="btn1">
                        
                        <a href="Registrar.jsp" class="btn2" type="button">Registrar</a>
                    </div>
                        </form> 
                </div>
    </div>
 </div>
<style>
    body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
    }

    .contenedorGeneral {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .contenedor {
        width: 80%;
        color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .login {
        width: 100%;
        max-width: 370px;
        /* Limitar el ancho máximo para evitar estiramiento en pantallas grandes */
        background-color: rgba(142, 167, 168, 0.8);
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        border-radius: 15px;
        padding: 20px 30px;
        padding-bottom: 60px;
    }

    .name_pass {
        display: flex;
        margin-bottom: 16px;
    }

    .imagen img {
        max-width: 100%;
        /* Asegura que la imagen no se estire más allá de su contenedor */
    }

    .textbox {
        width: 100%;
        padding: 11px 10px;
        border-radius: 15px;
        border: 1px solid #ccc;
        box-sizing: border-box;
        /* Incluye el relleno y el borde en el ancho */
    }

    .pass {
        width: 100%;
        /* padding: 11px 10px; */
        border-radius: 15px;
        border: 1px solid #ccc;
        box-sizing: border-box;
        /* Incluye el relleno y el borde en el ancho */
    }

    .boton {

        margin-top: 20px;
        text-align: center;

    }

    .btn1,
    .btn2 {
        flex: 1;
        /* Utiliza todo el espacio disponible */
        padding: 7px 12px;
        border-radius: 5px;
        color: white;
        font-weight: bold;
        text-decoration: none;
        text-align: center;
    }

    .btn1 {
        background-color: #617070;
        margin-right: 5px;
        /* Añade un pequeño espacio entre los botones */
    }

    .btn2 {
        background-color: rgb(255, 85, 85);
        margin-left: 5px;
        /* Añade un pequeño espacio entre los botones */
    }

    .bi-bi-person-fill, .bi-bi-key-fill{

        margin-right: 7px;
    }

    @media (min-width: 768px) {
        .contenedor {
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }

        .logi {
            margin-top: 0;
            margin-left: 20px;
        }
    }
</style>
