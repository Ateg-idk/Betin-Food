<%@page import="Controlador.ControladorPro"%>
<%@page import="Modelo.Promocion"%>
<%@page import="java.util.List"%> 
 <%@include file="promoAdmin.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Promoción</title>
    <!-- Agrega aquí tus enlaces a las hojas de estilo, scripts, etc. -->
</head>
<body>

    <h1>Editar Promoción</h1>

    <form action="ControladorPro" method="post" enctype="multipart/form-data">
        <input type="hidden" name="codigo" value="<%= request.getAttribute('promocion').getCodigo() %>">
        
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" value="<%= request.getAttribute('promocion').getNombre() %>" required>
        
        <label for="fechaInicio">Fecha de Inicio:</label>
        <input type="date" name="fechaInicio" value="<%= request.getAttribute('promocion').getFechaInicio() %>" required>
        
        <label for="fechaFin">Fecha de Fin:</label>
        <input type="date" name="fechaFin" value="<%= request.getAttribute('promocion').getFechaFin() %>" required>
        
        <label for="descripcion">Descripción:</label>
        <textarea name="descripcion" required><%= request.getAttribute('promocion').getDescripcion() %></textarea>
        
        <label for="precio">Precio:</label>
        <input type="number" name="precio" value="<%= request.getAttribute('promocion').getPrecio() %>" step="0.01">
        
        <label for="imagen">Imagen:</label>
        <input type="file" name="imagen">
        
        <button type="submit" name="editar">Guardar Cambios</button>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>