/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Hamburguesa;
import ModeloDAO.HamburguesaDAO;
import beans.Conexion;
import java.io.PrintWriter;
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
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.FileUtils;

/**
 *
 * @author samir
 */
@WebServlet(name = "ControladorHamburguesa", urlPatterns = {"/ControladorHamburguesa"})
@MultipartConfig

public class ControladorHamburguesa extends HttpServlet {

   public final HamburguesaDAO hamburguesaDAO = new HamburguesaDAO();

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             // Verifica si se ha enviado la solicitud para eliminar
    if (request.getParameter("eliminar") != null) {
        // Obtiene el código de la promoción a eliminar
        int idHamburguesa = Integer.parseInt(request.getParameter("idHam"));

        // Llama a la función para eliminar la promoción
        if (hamburguesaDAO.eliminarHamburguesa(idHamburguesa)) {
            // Eliminación exitosa, vuelve a cargar la vista con las promociones actualizadas
            request.setAttribute("mensaje", "Eliminación exitosa");
            request.setAttribute("hamburguesas", hamburguesaDAO.obtenerHamburguesa());  // Obtén las promociones actualizadas
            request.getRequestDispatcher("platoAdmin.jsp").forward(request, response);
             return;
        } else {
            // Ocurrió un error al eliminar, vuelve a cargar la vista con un mensaje de error
            request.setAttribute("mensaje", "Error al eliminar");
            request.getRequestDispatcher("platoAdmin.jsp").forward(request, response);
        }
    }
    
     if ("btnEditar".equals(request.getParameter("btnEditar"))) {
            int idHamburguesa = Integer.parseInt(request.getParameter("idHamburguesa"));
            Hamburguesa hamburguesaActual = hamburguesaDAO.obtenerHamburguesaPorCodigo(idHamburguesa);

            request.setAttribute("modo", "editar");
            request.setAttribute("hamburguesa", hamburguesaActual);
            request.getRequestDispatcher("platoAdmin.jsp").forward(request, response);
            return;
        }
     
      if ("actualizar".equals(request.getParameter("modo"))) {
            int idHamburguesa = Integer.parseInt(request.getParameter("idHamburguesa"));
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            Double precio = null;
            String precioStr = request.getParameter("precio");
            if (precioStr != null && !precioStr.isEmpty()) {
                precio = Double.valueOf(precioStr);
            }

            Hamburguesa hamburguesaActual = hamburguesaDAO.obtenerHamburguesaPorCodigo(idHamburguesa);

            // Obtén el nombre de la imagen actual
            String imagenActual = request.getParameter("imagenActual");

            // Procesar la carga de archivos solo si se proporciona uno nuevo
            Part filePart = request.getPart("fotoHamburguesa");
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
            hamburguesaActual.setNombre(nombre);
            hamburguesaActual.setDescripcion(descripcion);
            hamburguesaActual.setPrecio(precio);
            hamburguesaActual.setFotoHamburguesa(imagenNueva);

            if (hamburguesaDAO.actualizarHamburguesa(idHamburguesa, hamburguesaActual)) {
                request.setAttribute("mensaje", "Actualización exitosa");
                request.setAttribute("hamburguesas", hamburguesaDAO.obtenerHamburguesa());
                request.getRequestDispatcher("platoAdmin.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("mensaje", "Error al actualizar");
                request.getRequestDispatcher("platoAdmin.jsp").forward(request, response);
                return;
            }
        }
     

    
    
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");

        Double precio = null;
        String precioStr = request.getParameter("precio");
        if (precioStr != null && !precioStr.isEmpty()) {
            precio = Double.valueOf(precioStr);
        }

        // Procesar la carga de archivos
        Part filePart = request.getPart("fotoHamburguesa");
        String fileName = filePart.getSubmittedFileName();

        // Guardar el archivo en el directorio "img" en el directorio del proyecto
        String uploadPath = getServletContext().getRealPath("") + File.separator + "img" + File.separator;

        File uploadDir = new File(uploadPath);
        uploadDir.mkdir(); // Crea el directorio si no existe

        File file = new File(uploadPath + fileName);
        try (InputStream input = filePart.getInputStream()) {
            FileUtils.copyInputStreamToFile(input, file);
        }


        Hamburguesa nuevaHamburguesa = new Hamburguesa(nombre, descripcion, precio, "img/" + fileName);


        if (hamburguesaDAO.insertarHamburguesa(nuevaHamburguesa)) {

            request.setAttribute("mensaje", "Inserccion exitosa");
            request.setAttribute("hamburguesas", hamburguesaDAO.obtenerHamburguesa());
            request.getRequestDispatcher("platoAdmin.jsp").forward(request, response);

        } else {
            request.setAttribute("mensaje", "Error al insertar");
            request.getRequestDispatcher("platoAdmin.jsp").forward(request, response);
        }

    }

   

    @Override
    public String getServletInfo() {
        return "Short description";
    }
   

}
