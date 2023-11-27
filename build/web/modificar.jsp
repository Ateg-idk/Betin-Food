<%-- 
    Document   : modificar
    Created on : 7 oct. 2023, 01:02:42
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
    <!-- Aqui va el menu -->
    <%@include file="header.jsp" %>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-10">
                <div class="titulo">
                    <center>
                        <h2>MODIFICAR PERFIL DE USUARIO</h2>
                    </center>
                </div>


                <div style="margin-bottom:1rem;">
                    <center>
                        <img class="imagen" src="img/usur.jpg" height="250"><br>
                        
                        <input class="btn btn"    style="background-color: #8ea7a8; color: white;"  type="button" value="Subir imagen" >
                        
                    </center>
                </div>
                <center>
                <section class="form-modificarus" style="margin-bottom:1rem;">

                    <form>
                        <div class="dentro">
                            <div class="NOMyAPE">
                                <input class="NOM" type="text" placeholder="Nombre" size="50"> <input class="APE"
                                    type="text" placeholder="Apellido" size="50">
                            </div>

                            <input class="controls" type="text" placeholder="Email" size="50">
                            <input class="controls" type="text" placeholder="Ciudad/Distrito" size="50">
                            <input class="controls" type="text" placeholder="Direccion" size="50">

                            <div class="NUMyDNI">
                                <input class="Num" type="password" placeholder="Cambiar contraseña" size="50"> <input
                                    class="dni" type="password" placeholder="Confirmar contraseña" size="50">
                            </div>

                            <input class="controls" type="text" placeholder="Genero" size="50">

                            <div class="linea">

                                <hr width="850px">

                            </div>

                            <div class="botones">
                                <div style="margin-right: 15px;">
                                    <input class="btn btn" style="background-color: #8ea7a8; color: white;" type="button" value="Actualizar" size="50">
                                </div>
                                <div>
                                    <input class="btn btn"  style="background-color: rgb(255, 85, 85); color: white;" type="button" value="Cancelar" size="50">
                                </div>

                            </div>

                        </div>

                    </form>
                </section></center>
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
        .encabezado {

            margin: 20px;
            font-size: 30px;
            display: flex;
            color: rgb(255, 255, 255);
            text-shadow: black 0.1em 0.1em 0.2em;
           
        }

        .betin {
            margin-left: 150px;

        }

        .CCAP {
            margin-left: 900px;
            
        }


        .titulo {

            margin: 15px;
            font-size: 30px;
            color: rgb(255, 255, 255);
            text-shadow: black 0.1em 0.1em 0.2em;
            
        }


        .imagen {
            box-shadow: 5px 12px 20px #000;
            border: 4px solid black;
            border-radius: 50px;
            margin-top: 20px;
            margin-bottom: 10px;

        }

        .NOMyAPE {
            display: flex;
            margin-bottom: 16px;

        }

        .NOM {
            border-radius: 10px;
            box-shadow: 5px 12px 20px #000;
            color: white;
            width: 300px;
            padding: 20px;
            font-size: 18px;
            border: 1px solid #000000;
            background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);


            

        }

        .APE {
            border-radius: 10px;
            box-shadow: 5px 12px 20px #000;
            color: white;
            width: 300px;
            padding: 20px;
            margin-left: 150px;
            font-size: 18px;
            border: 1px solid #000000;
            background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);


        }

        .form-modificarus {

            border: 2px solid black;
            width: 900px;
            padding: 20px;
            background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);

            border-radius: 20px;
            font-family: 'calibri';
            box-shadow: 7px 13px 37px #000;
            
        }

        

        .controls {
            width: 860px;
            box-shadow: 5px 12px 20px #000;
            color: white;
            background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);

            padding: 20px;
            border-radius: 10px;
            margin-bottom: 16px;
            border: 0.5px solid #000000;
            font-family: 'calibri';
            font-size: 18px;
              
        }


        .NUMyDNI {

            display: flex;
            margin-bottom: 16px;
        }

        .Num {
            border-radius: 10px;
            box-shadow: 5px 12px 20px #000;
            color: white;
            width: 300px;
            padding: 20px;
            font-size: 18px;
            border: 0.5px solid #000000;
            background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);

            
        }

        .dni {
            border-radius: 10px;
            box-shadow: 5px 12px 20px #000;
            color: white;
            width: 300px;
            padding: 20px;
            margin-left: 150px;
            font-size: 18px;
            border: 0.5px solid #000000;
            background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);

            
        }

        .linea {
            margin-bottom: 10px;
            margin-left: -45px;
        }

        .botones {
            display: flex;
            width: 181px;
            margin-top: 10px;
            
            
            /* border: 5px solid red; */
            

        }

        .boton1 {
            border-radius: 10px;
            border: 2px solid black;
            background-color: #8ea7a8;
            color: white;
            width: 150px;
            padding: 20px;
            margin-left: 180px;
            box-shadow: 5px 12px 20px #000;
            

        }

        .boton2 {
            border-radius: 10px;
            border: 2px solid black;
            background-color: #8ea7a8;
            color: white;
            width: 150px;
            padding: 20px;
            margin-left: 100px;
            box-shadow: 5px 12px 20px #000;
        }

        .boton3 {
            border-radius: 10px;
            
            padding: 10px;
            
            margin-top: 10px;
            background-color: #8ea7a8;
            color: white;
            border: 2px solid black;
            box-shadow: 5px 12px 20px #000;
        }
    </style>

</html>
