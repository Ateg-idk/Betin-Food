/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;


import Modelo.Registrar;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import ModeloDAO.RegitrarDAO;

@WebServlet(name = "ControladorRegistrar", urlPatterns = {"/ControladorRegistrar"})
@MultipartConfig
public class ControladorRegistrar extends HttpServlet {
    public final RegitrarDAO registrarDAO = new RegitrarDAO();

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
        processRequest(request, response);

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String correo = request.getParameter("correo");
        String dni = request.getParameter("dni");
        String password = request.getParameter("password");

        Registrar nuevoRegistro = new Registrar(nombre, apellido, direccion, correo, dni, password);

        // Intentar insertar el registro
        if (registrarDAO.insertarRegistrar(nuevoRegistro)) {
            // Registro exitoso, validar al usuario
            if (registrarDAO.validarUsuario(correo, password)) {
                // Usuario válido, realizar las acciones necesarias
                HttpSession sesion = request.getSession();
                sesion.setAttribute("logueado", "OK");

                // Redirigir a la página index.jsp después de un registro exitoso y usuario validado
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                return; // Importante salir del método después de redirigir
            }
        }

        // Acciones en caso de error o usuario no válido
        request.setAttribute("mensaje", "Error al insertar el registro o usuario no válido");
        request.getRequestDispatcher("Registrar.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}