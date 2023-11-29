<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ControladorPro"%>
<%@page import="Modelo.Promocion"%>
<%@page import="java.util.List"%>

<% ControladorPro controladorPromo = new ControladorPro(); %>
<% Promocion promo = null; %>
<%String idParametro = request.getParameter("id");%>
<%
    if (idParametro != null && !idParametro.isEmpty()) {
        promo = new Promocion();
        try {
            // Intenta convertir el parámetro "id" a un valor entero
            int idPromocion = Integer.parseInt(idParametro);

            // Llama al método para obtener la promoción por ID
            Promocion promocion = controladorPromo.promoDAO.obtenerPromocionPorCodigo(idPromocion);

            if (promocion != null) {
                // Si se encuentra la promoción, agrégala al modelo y redirige a una vista
                promo = promocion;

            }
        } catch (NumberFormatException e) {
            // Manejo de errores al intentar convertir el parámetro "id" a entero
            response.getWriter().println("El parámetro 'id' no es un número válido.");
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="referencias.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Promociones</title>
</head>
<body>
    <%@include file="menuizquierdo.jsp" %>

    <div class="container mt-5" style="margin-right: 150px; position: fixed; margin-left: 450px">
        <div class="row">
            <div class="col-lg-16 mx-auto bg-white p-3 shadow">
                <div class="text-center mb-2">
                    <div class="col-12">
                        <div class="contenedor1">
                            <div class="titulo">
                                <h1> PROMOCIONES</h1>
                            </div>
                            <div class="Formulario">
                                <form action="ControladorPro" method="post" enctype="multipart/form-data">
                                    <table>
                                        <th>
                                        <% if (promo != null) {%>
                                                <div class="cobx">
                                                    Nombre
                                                    <input class="lblt" type="text" name="nombre" value="<%= promo.getNombre()%>">
                                                     <input type="hidden" name="modo" value="actualizar">
                                                    <input type="hidden" name="codigo" value="<%= promo.getCodigo()%>"/> 
                                                    <div class="botones">
                                                        <button id="btnAgregar" class="btn" style="background-color: #8ea7a8; color: white;" type="submit">Agregar</button>
                                                        <button class="btn" style="background-color: #8ea7a8; color: white;" type="submit" name="btnEditar">Editar</button>
                                                    </div>
                                                </div>
                                                <div class="cobx">
                                                    Precio
                                                    <input class="lblt" type="text" name="precio" value="<%= promo.getPrecio()%>">
                                                </div>


                                                <div class="fecha">
                                                    Fecha inicio <input class="FecIni" type="date" name="fechaInicio" value="<%= promo.getFechaInicio()%>">
                                                    Fecha fin <input class="FecFin" type="date" name="fechaFin" value="<%= promo.getFechaFin()%>">
                                                </div>

                                                <div class="Descripcion">
                                                    Descripcion
                                                </div>
                                                <div class="Descripcion 2">
                                                    <textarea class="desc" name="descripcion" cols="37" rows="4"><%= promo.getDescripcion()%></textarea>
                                                </div>
                                                
                                                <% } else { %>
                                                <div class="cobx">
                                                    Nombre

                                                    <input class="lblt" type="text" name="nombre" >


                                                    <div class="botones">
                                                        <button id="btnAgregar" class="btn" style="background-color: #8ea7a8; color: white;" type="submit">Agregar</button>
                                                    </div>
                                                </div>
                                                <div class="cobx">
                                                    Precio
                                                    <input class="lblt" type="text" name="precio">
                                                </div>


                                                <div class="fecha">
                                                    Fecha inicio <input class="FecIni" type="date" name="fechaInicio">
                                                    Fecha fin <input class="FecFin" type="date" name="fechaFin">
                                                </div>

                                                <div class="Descripcion">
                                                    Descripcion
                                                </div>
                                                <div class="Descripcion 2">
                                                    <textarea class="desc" name="descripcion" cols="37" rows="4"></textarea>
                                                </div>
                                                <% } %>
                                        </th>
                                        
                                        <th>
                                            <% if (promo != null) {%>
                                            
                                                <img src="<%= promo.getImagen() %>" alt="Imagen de la promo" width="250" height="250">
                                                
                                                <input class="form-control form-control-sm" id="formFileSm" name="imagen" type="file"  style="background-color: #8ea7a8; color: white; height: 30px; width: 380px;">
                                           
                                                
                                               <% } else { %>
                                                  <div class="imagen flex-column align-items-center " style="margin-left:60px;">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bibi-image" viewBox="0 0 16 16">
                                                    <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
                                                    <path
                                                        d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z" />
                                                </svg>
                                                
                                                <input class="form-control form-control-sm" id="formFileSm" name="imagen" type="file"  style="background-color: #8ea7a8; color: white; height: 30px; width: 380px;">
                                                <% } %>
                                            
                                            </div>
                                        </th>
                                    </table>
                                </form>
                            </div>
                        </div>

                        <div class="table-responsive mt-5">
                            <table class="table table-striped">
                                <thead class="text-white" style="background-color: #8ea7a8; color: white;">
                                    <tr>
                                        <th>CODIGO</th>
                                        <th>NOMBRE</th>
                                        <th>DESCRIPCION</th>
                                        <th>PRECIO</th>
                                        <th>FECHA INICIO</th>
                                        <th>FECHA FIN</th>
                                        <th>IMAGEN</th>
                                        <th>ACCION</th>
                                    </tr>
                                </thead>
                                
                                <% List<Promocion> promociones = controladorPromo.promoDAO.obtenerPromociones(); %>
                                <% for (Promocion promocion : promociones) { %>
                                    <tr>
                                        <td><%= promocion.getCodigo() %></td>
                                        <td><%= promocion.getNombre() %></td>
                                        <td><%= promocion.getDescripcion() %></td>
                                        <td><%= promocion.getPrecio() %></td>
                                        <td><%= promocion.getFechaInicio() %></td>
                                        <td><%= promocion.getFechaFin() %></td>
                                        <td>
                                            <!-- Mostrar la imagen -->
                                            <img src="<%= promocion.getImagen() %>" alt="Imagen de la promo" width="50" height="50">
                                        </td>
                                        <td>
                                       <!-- Formulario para Editar -->
                    <form action="ControladorPro" method="post" enctype="multipart/form-data">
        
<a class="btn" style="background-color: #8ea7a8; color: white;" href="promoAdmin.jsp?id=<%= promocion.getCodigo()%>" name="editar">Editar</a>
     
                    </form>

                   <form action="ControladorPro" method="post" enctype="multipart/form-data">
    <input type="hidden" name="codigo" value="<%= promocion.getCodigo() %>">
    <input type="hidden" name="eliminar">
    <button class="btn" style="background-color: rgb(255, 85, 85); color: white;" type="submit">Eliminar</button>
</form>
                                    </tr>
                                <% } %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts al final del body -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>

<style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        /****************CONTENEDOR 1******************/

        .contenedor1 {

            margin: 12px auto;

        }

        .contenedor1 .titulo {
            text-align: center;
            font-size: 50px;
            font-weight: bold;
            /*negrita*/
            /*border: 2px solid red;*/
        }

        .Formulario {
            /* width: 76%; */
            /* margin-left: 12%; */
            /* padding: 20px; */
             
            
        }

        .nombre {
            margin-left: -380px;
        }

        .cobx {
            display: flex;
            align-items: center;
        }



        .lblt {
            width: 50%;
            border-radius: 5px;
            margin-left: 5px;
            background-color: #F2F3F4;
        }

        .botones {
            margin-left: 10px;
            display: flex;
            align-items: center;
        }

        .BtAgregar {
            margin-right: 5px;
            padding: 3px;
            width: 80px;
            border-radius: 5px;
            background-color: #D7DBDD;
        }

        .BtBuscar {
            padding: 3px;
            width: 80px;
            border-radius: 5px;
            background-color: #D7DBDD;
        }

        .fecha {
            /* text-align: left; */
            width: 480px;
            
            
            
        }
        .FecIni{
            border-radius: 5px;
            margin-left: 5px;
            text-align: center;
        }

        .FecFin{
            border-radius: 5px;
            margin-left: 5px;
            text-align: center;
        }

        .Descripcion {
            text-align: left;
        }

        .Descripcion2 {
            display: flex;
            width: 30%;
            border-radius: 5px;
            background-color: #F2F3F4
            
        }


        
        .boton {
            background-color: #c53333;

            margin-top: 70px;
            padding: 20px;
        }

        .btn2 {
            height: 40px;
            width: 40px;
            width: 80px;
            margin-top: 10px;
            background-color: red;
        }

        .btn1 {
            height: 40px;
            width: 40px;
            margin-top: 10px;
            width: 80px;
            background-color: #369782;
        }

        .BtAgregar {
            height: 40px;
            width: 40px;
            width: 80px;
            margin-top: 10px;
            background-color: red;
        }
        .imagen{
            margin-left: 120px;
            
            
        }

        .BtBuscar {
            height: 40px;
            width: 40px;
            margin-top: 10px;
            width: 80px;
            background-color: #369782;
        }
        .btn{
            margin-bottom: 5px;
            margin-left: 5px;
            
        }
        
        body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }
    </style>

</html>
