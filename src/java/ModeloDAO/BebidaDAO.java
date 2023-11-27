/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Bebida;
import beans.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author orito
 */
public class BebidaDAO {
    public List<Bebida> obtenerBebidas(){
        List<Bebida> bebidas = new ArrayList<>();
        
        Conexion conexion = new Conexion();
        
        try {
            Connection cnx = conexion.conecta();
            String query = "SELECT * FROM bebida";
            PreparedStatement statement = cnx.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();
            
            while (resultSet.next()) {
                Bebida bebida = new Bebida();
                bebida.setCodigoBebida(resultSet.getInt("codigoBebida"));
                bebida.setNombreBebida(resultSet.getString("nombreBebida"));
                bebida.setPrecio(resultSet.getDouble("precio"));
                bebida.setDescripcion(resultSet.getString("descripcion"));
                bebida.setImagenBebida(resultSet.getString("imagenBebida"));

                bebidas.add(bebida);
            }
            resultSet.close();
            statement.close();
            cnx.close();
            
        }catch (ClassNotFoundException | SQLException e) {
            // Manejo de excepciones (puedes redirigir a una página de error o registrar el error)
            e.printStackTrace();
        }
    
        return bebidas;
    }
     public Bebida obtenerBebidaPorCodigo(int codigoBebida) {
        Conexion conexion = new Conexion();
        Bebida bebida = new Bebida();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "SELECT * FROM bebida WHERE codigoBebida = ?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setInt(1, codigoBebida);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    bebida.setCodigoBebida(resultSet.getInt("codigoBebida"));
                    bebida.setNombreBebida(resultSet.getString("nombreBebida"));
                    bebida.setPrecio(resultSet.getDouble("precio"));
                    bebida.setDescripcion(resultSet.getString("descripcion"));
                    bebida.setImagenBebida(resultSet.getString("imagenBebida"));
                   
                }

                resultSet.close();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return bebida;
    }
    
public boolean insertarBebida(Bebida bebida) {
    // Lógica para insertar en la base de datos
    Conexion conexion = new Conexion();
    
    try {
        Connection cnx = conexion.conecta();
        String query = "INSERT INTO bebida (nombreBebida, precio, descripcion, imagenBebida) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = cnx.prepareStatement(query)) {
            statement.setString(1, bebida.getNombreBebida());
            statement.setDouble(2, bebida.getPrecio());
            statement.setString(3, bebida.getDescripcion());
            statement.setString(4, bebida.getImagenBebida());  // Asignar la imagen, que es null en este caso

            // Ejecuta la consulta
            int filasAfectadas = statement.executeUpdate();

            // Si se insertó al menos una fila, considera que fue exitoso
            return filasAfectadas > 0;
        }
    }   catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace(); // Maneja la excepción según tus necesidades
    }

    return false;
}
public boolean eliminarBebida(int codigobebida) {
    Conexion conexion = new Conexion();

    try {
        Connection cnx = conexion.conecta();
        String query = "DELETE FROM bebida WHERE codigoBebida = ?";
        
        try (PreparedStatement statement = cnx.prepareStatement(query)) {
            statement.setInt(1, codigobebida);
            
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
    public boolean actualizarBebida(int codigoBebida, Bebida bebidaEditada) {
        Conexion conexion = new Conexion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "UPDATE bebida SET nombreBebida=?, precio=?, descripcion=?, imagenBebida=? WHERE codigoBebida=?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, bebidaEditada.getNombreBebida());
                  statement.setObject(2, bebidaEditada.getPrecio());
                statement.setString(3, bebidaEditada.getDescripcion());
                
                statement.setString(4, bebidaEditada.getImagenBebida());
              
                statement.setInt(5, codigoBebida);

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
