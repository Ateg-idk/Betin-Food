<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ControladorHamburguesa"%>
<%@page import="Modelo.Hamburguesa"%>
<%@page import="java.util.List"%> 

<% ControladorHamburguesa controladorHamburguesa = new ControladorHamburguesa(); %>
<% Hamburguesa hambur = null; %>
<%String idParametro = request.getParameter("id");%>
<%
    if (idParametro != null && !idParametro.isEmpty()) {
   
        hambur = new Hamburguesa();
        try {
            // Intenta convertir el parámetro "id" a un valor entero
            int idHamburguesa = Integer.parseInt(idParametro);

            // Llama al método para obtener la promoción por ID
            Hamburguesa hamburguesa = controladorHamburguesa.hamburguesaDAO.obtenerHamburguesaPorCodigo(idHamburguesa);

            if (hamburguesa != null) {
                // Si se encuentra la promoción, agrégala al modelo y redirige a una vista
                hambur = hamburguesa;

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Platos</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body class="bg-light">
        <%@include file="menuizquierdo.jsp" %>    


        <!-- Contenido principal -->
        <div class="container mt-12" style="margin-right: 120px ;">
            <div class="row">
                <div class="col-lg-10 mx-auto bg-white p-4 shadow">
                    <div class="text-center mb-2">
                        <h1>
                            HAMBURGUESAS
                        </h1>
                    </div>

                    <form action="ControladorHamburguesa" method="post" enctype="multipart/form-data" class="row g-3">

                           <% if (hambur != null) {%>
                             <div class="imagen flex-column align-items-center " style="margin-left:350px;">

                           <img src="<%= hambur.getFotoHamburguesa() %>" alt="Imagen de la hamburguesa" width="180" height="180">
                            <input class="form-control form-control-sm"  name="fotoHamburguesa" type="file"  style="background-color: #8ea7a8; color: white; height: 30px; width: 380px;">
                         </div>
                           
                       
                      
             
                     
                         <input type="hidden" name="idHamburguesa" value="<%= hambur.getId()%>"/> 
                         <input type="hidden" name="modo" value="actualizar">
                         
                         <div class="col-md-6">
                            <label for="inputnombre4" class="form-label">Nombre</label>
                            <input type="text" name="nombre"  class="form-control"  value="<%= hambur.getNombre()%>">
                        </div>

                        <div class="col-md-6">
                            <label for="inputcodigo4" class="form-label">Precio</label>
                            <input type="text" name= "precio" class="form-control" value="<%= hambur.getPrecio()%>">
                        </div>

                        <div class="col-12">
                            <label for="exampleFormControlTextarea1" class="form-label">Descripcion</label>
                            <textarea class="form-control" name= "descripcion" rows="4"><%= hambur.getDescripcion()%> </textarea>
                        </div>
                   <div class="text-center mt-4">
                        <button class="btn me-3"  name= "Agregar" style="background-color: #8ea7a8; color: white;">Agregar</button>
                        <button class="btn" style="background-color: #8ea7a8; color: white;" type="submit" name="btnEditar">Editar</button>

                        </div>
                         
                          <% } else { %>
                            <div class="imagen flex-column align-items-center " style="margin-left:350px;">
                         
                            <svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bibi-image" viewBox="0 0 16 16">
                            <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
                            <path
                                d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z" />
                            </svg>
                          
                            <input class="form-control form-control-sm" name="fotoHamburguesa" type="file"  style="background-color: #8ea7a8; color: white; height: 30px; width: 380px;">
                 
                        </div>
                        <div class="col-md-6">
                            <label for="inputnombre4" class="form-label">Nombre</label>
                            <input type="text" name= "nombre" class="form-control" >
                        </div>

                        <div class="col-md-6">
                            <label for="inputcodigo4" class="form-label">Precio</label>
                            <input type="text" name= "precio" class="form-control" >
                        </div>

                        <div class="col-12">
                            <label for="exampleFormControlTextarea1" class="form-label">Descripcion</label>
                            <textarea class="form-control" name= "descripcion"  rows="4"></textarea>
                        </div>
                        
                        <div class="text-center mt-4">
                            <button class="btn me-3"  name= "Agregar" style="background-color: #8ea7a8; color: white;">Agregar</button>

                        </div>
                            <% } %>

                    </form>



                    <div class="table-responsive mt-5">
                        <table class="table table-striped">
                            <thead class="text-white"  style="background-color: #8ea7a8;" >
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Descripcion</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Accion</th>
                                    <th scope="col">Imagen</th>

                                </tr>
                            </thead>
                            <tbody>
                                <% List<Hamburguesa> hamburguesas = controladorHamburguesa.hamburguesaDAO.obtenerHamburguesa(); %>
                                <% for (Hamburguesa hamburguesa : hamburguesas) { %>
                                <tr>
                                    
                                    <td><%= hamburguesa.getId() %></td>
                                    <td><%= hamburguesa.getNombre() %></td>
                                    <td><%= hamburguesa.getDescripcion() %></td>
                                    <td><%= hamburguesa.getPrecio() %></td>
                                    <td>
                                        <!-- Mostrar la imagen -->
                                        <img src="<%= hamburguesa.getFotoHamburguesa() %>" alt="Imagen de la hamburguesa" width="50" height="50">
                                    </td>
                                    
                                         <td>
                                             <form action="ControladorHamburguesa" method="post" enctype="multipart/form-data">
        
                                    <a class="btn" style="background-color: #8ea7a8; color: white;" href="platoAdmin.jsp?id=<%= hamburguesa.getId()%>" name="editar">Editar</a>
     
                                         </form>
                                    
                                        <form action="ControladorHamburguesa" method="post" enctype="multipart/form-data">
                                            <input type="hidden" name="idHam" value="<%= hamburguesa.getId() %>">
                                            <input type="hidden" name="eliminar"> 

                                            <button class="btn" style="background-color: rgb(255, 85, 85); color: white;" type="submit">Eliminar</button>
                                        </form>
                                    </td>

                                </tr>
                                <% } %>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
        <style>
            body {
                font-family: 'Quicksand', sans-serif;
            }

            .table th,
            .table td {
                vertical-align: middle;
            }

        </style>
        <!-- Scripts al final del body -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    <style>
        body {
            background-image: url('https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png');
        }
    </style>



</html>
