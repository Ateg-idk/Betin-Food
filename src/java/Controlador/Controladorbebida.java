/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Bebida;
import beans.Conexion;
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
import ModeloDAO.BebidaDAO;

/**
 *
 * @author orito
 */
@WebServlet(name = "Controladorbebida", urlPatterns = {"/Controladorbebida"})
@MultipartConfig
public class Controladorbebida extends HttpServlet{
   
    public final BebidaDAO bebidaDAO = new BebidaDAO();
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Tu lógica para procesar la solicitud
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
  // Verifica si se ha enviado la solicitud para eliminar
    if (request.getParameter("eliminar") != null) {
        // Obtiene el código de la promoción a eliminar
        int codigobebida = Integer.parseInt(request.getParameter("codigoBebida"));

        // Llama a la función para eliminar la promoción
        if (bebidaDAO.eliminarBebida(codigobebida)) {
            // Eliminación exitosa, vuelve a cargar la vista con las promociones actualizadas
            request.setAttribute("mensaje", "Eliminación exitosa");
            request.setAttribute("bebidas", bebidaDAO.obtenerBebidas());  // Obtén las promociones actualizadas
            request.getRequestDispatcher("bebidaAdmin.jsp").forward(request, response);
             return;
        } else {
            // Ocurrió un error al eliminar, vuelve a cargar la vista con un mensaje de error
            request.setAttribute("mensaje", "Error al eliminar");
            request.getRequestDispatcher("bebidaAdmin.jsp").forward(request, response);
        }
    }
    if ("btnEditar".equals(request.getParameter("btnEditar"))) {
            int codigoBebida = Integer.parseInt(request.getParameter("codigoBebida"));
            Bebida bebidaActual = bebidaDAO.obtenerBebidaPorCodigo(codigoBebida);

            request.setAttribute("modo", "editar");
            request.setAttribute("bebida", bebidaActual);
            request.getRequestDispatcher("bebidaAdmin.jsp").forward(request, response);
            return;
        }
    
    if ("actualizar".equals(request.getParameter("modo"))) {
            int codigoBebida = Integer.parseInt(request.getParameter("codigoBebida"));
            String nombreBebida = request.getParameter("nombreBebida");
            String descripcion = request.getParameter("descripcion");
            Double precio = null;
            String precioStr = request.getParameter("precio");
            if (precioStr != null && !precioStr.isEmpty()) {
                precio = Double.valueOf(precioStr);
            }

            Bebida bebidaActual = bebidaDAO.obtenerBebidaPorCodigo(codigoBebida);

            // Obtén el nombre de la imagen actual
            String imagenActual = request.getParameter("imagenActual");

            // Procesar la carga de archivos solo si se proporciona uno nuevo
            Part filePart = request.getPart("imagenBebida");
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
            bebidaActual.setNombreBebida(nombreBebida);
            bebidaActual.setDescripcion(descripcion);
            bebidaActual.setPrecio(precio);
            bebidaActual.setImagenBebida(imagenNueva);

            if (bebidaDAO.actualizarBebida(codigoBebida, bebidaActual)) {
                request.setAttribute("mensaje", "Actualización exitosa");
                request.setAttribute("bebidas", bebidaDAO.obtenerBebidas());
                request.getRequestDispatcher("bebidaAdmin.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("mensaje", "Error al actualizar");
                request.getRequestDispatcher("bebidaAdmin.jsp").forward(request, response);
                return;
            }
        }
    
    
    
// Obtén los datos del formulario
    String nombreBebida = request.getParameter("nombreBebida");
     Double precio = null;
    String precioStr = request.getParameter("precio");
    if (precioStr != null && !precioStr.isEmpty()) {
    precio = Double.valueOf(precioStr);
}
  
    String descripcion = request.getParameter("descripcion");
    
      // Procesar la carga de archivos
        Part filePart = request.getPart("imagenBebida");
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
    Bebida nuevaBebida = new Bebida(nombreBebida, precio, descripcion, "img/" + fileName);
    
    // Llama a la función para insertar en la base de datos
    System.out.println("Llamando a insertarBebida");

    if (bebidaDAO.insertarBebida(nuevaBebida)) {
        // Inserción exitosa, vuelve a cargar la vista con las promociones actualizadas
        request.setAttribute("mensaje", "Inserción exitosa");
        request.setAttribute("bebidas", bebidaDAO.obtenerBebidas());  // Obtén las promociones actualizadas
        request.getRequestDispatcher("bebidaAdmin.jsp").forward(request, response);
    }else {
        // Ocurrió un error, vuelve a cargar la vista con un mensaje de error
        request.setAttribute("mensaje", "Error al insertar");
        request.getRequestDispatcher("bebidaAdmin.jsp").forward(request, response);
    }
}
    


}