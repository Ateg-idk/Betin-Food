/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Modelo.Broaster;
import ModeloDAO.BroasterDAO;
import ModeloDAO.PromoDAO;
import jakarta.servlet.annotation.MultipartConfig;
import beans.Conexion;
import jakarta.servlet.annotation.WebServlet;
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
 * @author GAMING1
 */
@WebServlet(name = "ControladorBroaster", urlPatterns = {"/ControladorBroaster"})
@MultipartConfig
public class ControladorBroaster extends HttpServlet {
     
       public final BroasterDAO broasterDAO = new BroasterDAO();
    
   
   
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
        int codigoBroaster = Integer.parseInt(request.getParameter("codigo"));

        // Llama a la función para eliminar la promoción
        if (broasterDAO.eliminarBroaster(codigoBroaster)) {
            // Eliminación exitosa, vuelve a cargar la vista con las promociones actualizadas
            request.setAttribute("mensaje", "Eliminación exitosa");
            request.setAttribute("broasters", broasterDAO.obtenerBroaster());  // Obtén las promociones actualizadas
            request.getRequestDispatcher("BroasterAdmin.jsp").forward(request, response);
             return;
        } else {
            // Ocurrió un error al eliminar, vuelve a cargar la vista con un mensaje de error
            request.setAttribute("mensaje", "Error al eliminar");
            request.getRequestDispatcher("BroasterAdmin.jsp").forward(request, response);
        }
    }
     if ("btnEditar".equals(request.getParameter("btnEditar"))) {
            int codigoBroaster = Integer.parseInt(request.getParameter("codigo"));
            Broaster broasterActual = broasterDAO.obtenerPromocionPorCodigo(codigoBroaster);

            request.setAttribute("modo", "editar");
            request.setAttribute("broaster", broasterActual);
            request.getRequestDispatcher("BroasterAdmin.jsp").forward(request, response);
            return;
        }
     
    if ("actualizar".equals(request.getParameter("modo"))) {
            int codigoBroaster = Integer.parseInt(request.getParameter("codigo"));
            
            String nombre = request.getParameter("nombre");
            
            String descripcion = request.getParameter("descripcion");
            
            Double precio = null;
            String precioStr = request.getParameter("precio");
            if (precioStr != null && !precioStr.isEmpty()) {
                precio = Double.valueOf(precioStr);
            }

            Broaster broasterActual = broasterDAO.obtenerPromocionPorCodigo(codigoBroaster);

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
            
            broasterActual.setNombre(nombre);
           broasterActual.setDescripcion(descripcion);     
            broasterActual.setImagen(imagenNueva);
            broasterActual.setPrecio(precio);

            if (broasterDAO.actualizarBroaster(codigoBroaster, broasterActual)) {
                request.setAttribute("mensaje", "Actualización exitosa");
                request.setAttribute("broasters", broasterDAO.obtenerBroaster());
                request.getRequestDispatcher("BroasterAdmin.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("mensaje", "Error al actualizar");
                request.getRequestDispatcher("BroasterAdmin.jsp").forward(request, response);
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
 
 
    // Crear un objeto Broaster con los datos del formulario
    Broaster nuevoBroaster = new Broaster (nombre, descripcion, precio, "img/" + fileName );
    // Llamar a la función para insertar en la base de datos
    if (broasterDAO.insertarBroaster(nuevoBroaster)) {
        request.setAttribute("mensaje", "Inserción exitosa");
        request.setAttribute("broasters", broasterDAO.obtenerBroaster());
        request.getRequestDispatcher("BroasterAdmin.jsp").forward(request, response);
    } else {
        // Ocurrió un error, volver a cargar la vista con un mensaje de error
        request.setAttribute("mensaje", "Error al insertar");
        request.getRequestDispatcher("BroasterAdmin.jsp").forward(request, response);
    }
    
}

  


}
