/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Promocion;
import beans.Conexion;
import com.sun.jdi.connect.spi.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Controlador.ControladorPro;
/**
 *
 * @author orito
 */
public class PromoDAO {

   
    
    public List<Promocion> obtenerPromociones() {
        List<Promocion> promociones = new ArrayList<>();

        Conexion conexion = new Conexion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "SELECT * FROM promo";
            PreparedStatement statement = cnx.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Promocion promocion = new Promocion();
                promocion.setCodigo(resultSet.getInt("codigo"));
                promocion.setNombre(resultSet.getString("nombre"));
                promocion.setFechaInicio(resultSet.getDate("fechaInicio").toLocalDate());
                promocion.setFechaFin(resultSet.getDate("fechaFin").toLocalDate());
                promocion.setDescripcion(resultSet.getString("descripcion"));
                promocion.setImagen(resultSet.getString("imagen"));
                promocion.setPrecio(resultSet.getDouble("precio"));

                promociones.add(promocion);
            }

            resultSet.close();
            statement.close();
            cnx.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return promociones;
    }
    
    public Promocion obtenerPromocionPorCodigo(int codigoPromocion) {
        Conexion conexion = new Conexion();
        Promocion promocion = new Promocion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "SELECT * FROM promo WHERE codigo = ?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setInt(1, codigoPromocion);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    promocion.setCodigo(resultSet.getInt("codigo"));
                    promocion.setNombre(resultSet.getString("nombre"));
                    promocion.setFechaInicio(resultSet.getDate("fechaInicio").toLocalDate());
                    promocion.setFechaFin(resultSet.getDate("fechaFin").toLocalDate());
                    promocion.setDescripcion(resultSet.getString("descripcion"));
                    promocion.setImagen(resultSet.getString("imagen"));
                    promocion.setPrecio(resultSet.getDouble("precio"));
                }

                resultSet.close();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return promocion;
    }
     public boolean insertarPromocion(Promocion promocion) {
        Conexion conexion = new Conexion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "INSERT INTO promo (nombre, fechaInicio, fechaFin, descripcion, imagen, precio) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, promocion.getNombre());
                statement.setDate(2, java.sql.Date.valueOf(promocion.getFechaInicio()));
                statement.setDate(3, java.sql.Date.valueOf(promocion.getFechaFin()));
                statement.setString(4, promocion.getDescripcion());
                statement.setString(5, promocion.getImagen());
                statement.setObject(6, promocion.getPrecio());
                // Ejecuta la consulta
                int filasAfectadas = statement.executeUpdate();

                // Si se insertó al menos una fila, considera que fue exitoso
                return filasAfectadas > 0;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Maneja la excepción según tus necesidades
        }

        return false;
    }

    public boolean eliminarPromocion(int codigoPromocion) {
        Conexion conexion = new Conexion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "DELETE FROM promo WHERE codigo = ?";

            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setInt(1, codigoPromocion);

                // Ejecuta la consulta
                int filasAfectadas = statement.executeUpdate();

                // Si se eliminó al menos una fila, considera que fue exitoso
                return filasAfectadas > 0;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Maneja la excepción según tus necesidades
        }

        return false;
    }

    public boolean actualizarPromocion(int codigoPromocion, Promocion promocionEditada) {
        Conexion conexion = new Conexion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "UPDATE promo SET nombre=?, fechaInicio=?, fechaFin=?, descripcion=?, imagen=?, precio=? WHERE codigo=?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, promocionEditada.getNombre());
                statement.setDate(2, java.sql.Date.valueOf(promocionEditada.getFechaInicio()));
                statement.setDate(3, java.sql.Date.valueOf(promocionEditada.getFechaFin()));
                statement.setString(4, promocionEditada.getDescripcion());
                statement.setString(5, promocionEditada.getImagen());
                statement.setObject(6, promocionEditada.getPrecio());
                statement.setInt(7, codigoPromocion);

                // Ejecuta la consulta
                int filasAfectadas = statement.executeUpdate();

                // Si se actualizó al menos una fila, considera que fue exitoso
                return filasAfectadas > 0;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Maneja la excepción según tus necesidades
        }

        return false;
    }
    
}
