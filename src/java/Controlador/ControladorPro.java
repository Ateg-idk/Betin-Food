package Controlador;

import Modelo.Promocion;
import beans.Conexion;
import org.apache.commons.io.FileUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import ModeloDAO.PromoDAO;

@WebServlet(name = "ControladorPro", urlPatterns = {"/ControladorPro"})
@MultipartConfig
public class ControladorPro extends HttpServlet {
    
    public final PromoDAO promoDAO = new PromoDAO();

    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (request.getParameter("eliminar") != null) {
            int codigoPromocion = Integer.parseInt(request.getParameter("codigo"));
            if (promoDAO.eliminarPromocion(codigoPromocion)) {
                request.setAttribute("mensaje", "Eliminación exitosa");
                request.setAttribute("promociones", promoDAO.obtenerPromociones());
                request.getRequestDispatcher("promoAdmin.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("mensaje", "Error al eliminar");
                request.getRequestDispatcher("promoAdmin.jsp").forward(request, response);
            }
        }

        if ("btnEditar".equals(request.getParameter("btnEditar"))) {
            int codigoPromocion = Integer.parseInt(request.getParameter("codigo"));
            Promocion promocionActual = promoDAO.obtenerPromocionPorCodigo(codigoPromocion);

            request.setAttribute("modo", "editar");
            request.setAttribute("promocion", promocionActual);
            request.getRequestDispatcher("promoAdmin.jsp").forward(request, response);
            return;
        }

        if ("actualizar".equals(request.getParameter("modo"))) {
            int codigoPromocion = Integer.parseInt(request.getParameter("codigo"));
            String nombre = request.getParameter("nombre");
            String fechaInicioStr = request.getParameter("fechaInicio");
            LocalDate fechaInicio = LocalDate.parse(fechaInicioStr);
            String fechaFinStr = request.getParameter("fechaFin");
            LocalDate fechaFin = LocalDate.parse(fechaFinStr);
            String descripcion = request.getParameter("descripcion");
            Double precio = null;
            String precioStr = request.getParameter("precio");
            if (precioStr != null && !precioStr.isEmpty()) {
                precio = Double.valueOf(precioStr);
            }

            Promocion promocionActual = promoDAO.obtenerPromocionPorCodigo(codigoPromocion);

            // Obtén el nombre de la imagen actual
            String imagenActual = request.getParameter("imagenActual");

            // Procesar la carga de archivos solo si se proporciona uno nuevo
            Part filePart = request.getPart("imagen");
            String fileName = filePart.getSubmittedFileName();

            // Si se proporciona un nuevo archivo, guárdalo; de lo contrario, conserva la imagen actual
            String imagenNueva = (fileName != null && !fileName.isEmpty()) ? "img/" + fileName : imagenActual;
            // Guardar el archivo en el directorio "img" en el directorio del proyecto
        String uploadPath = getServletContext().getRealPath("") + File.separator + "img" + File.separator;

        File uploadDir = new File(uploadPath);
        uploadDir.mkdir(); // Crea el directorio si no existe

        File file = new File(uploadPath + fileName);
        try (InputStream input = filePart.getInputStream()) {
            FileUtils.copyInputStreamToFile(input, file);
        }
            // Actualiza el objeto Promocion con los nuevos datos
            promocionActual.setNombre(nombre);
            promocionActual.setFechaInicio(fechaInicio);
            promocionActual.setFechaFin(fechaFin);
            promocionActual.setDescripcion(descripcion);
            promocionActual.setPrecio(precio);
            promocionActual.setImagen(imagenNueva);

            if (promoDAO.actualizarPromocion(codigoPromocion, promocionActual)) {
                request.setAttribute("mensaje", "Actualización exitosa");
                request.setAttribute("promociones", promoDAO.obtenerPromociones());
                request.getRequestDispatcher("promoAdmin.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("mensaje", "Error al actualizar");
                request.getRequestDispatcher("promoAdmin.jsp").forward(request, response);
                return;
            }
        }

        // Obtén los datos del formulario
        String nombre = request.getParameter("nombre");

        // Modificación para manejar fechas nulas o vacías
        String fechaInicioParam = request.getParameter("fechaInicio");
        LocalDate fechaInicio = (fechaInicioParam != null && !fechaInicioParam.isEmpty()) ? LocalDate.parse(fechaInicioParam) : null;

        String fechaFinParam = request.getParameter("fechaFin");
        LocalDate fechaFin = (fechaFinParam != null && !fechaFinParam.isEmpty()) ? LocalDate.parse(fechaFinParam) : null;
        String descripcion = request.getParameter("descripcion");
        Double precio = null;
        String precioStr = request.getParameter("precio");
        if (precioStr != null && !precioStr.isEmpty()) {
            precio = Double.valueOf(precioStr);
        }

        // Procesar la carga de archivos
        Part filePart = request.getPart("imagen");
        String fileName = filePart.getSubmittedFileName();

        // Guardar el archivo en el directorio "img" en el directorio del proyecto
        String uploadPath = getServletContext().getRealPath("") + File.separator + "img" + File.separator;

        File uploadDir = new File(uploadPath);
        uploadDir.mkdir(); // Crea el directorio si no existe

        File file = new File(uploadPath + fileName);
        try (InputStream input = filePart.getInputStream()) {
            FileUtils.copyInputStreamToFile(input, file);
        }

        // Crea un objeto Promocion con los datos del formulario
        Promocion nuevaPromocion = new Promocion(nombre, fechaInicio, fechaFin, descripcion, "img/" + fileName, precio);

        // Llama a la función para insertar en la base de datos
        if (promoDAO.insertarPromocion(nuevaPromocion)) {
            // Inserción exitosa, vuelve a cargar la vista con las promociones actualizadas
            request.setAttribute("mensaje", "Inserción exitosa");
            request.setAttribute("promociones", promoDAO.obtenerPromociones());
            request.getRequestDispatcher("promoAdmin.jsp").forward(request, response);
        } else {
            // Ocurrió un error, vuelve a cargar la vista con un mensaje de error
            request.setAttribute("mensaje", "Error al insertar");
            request.getRequestDispatcher("promoAdmin.jsp").forward(request, response);
        }
    }

   
}
