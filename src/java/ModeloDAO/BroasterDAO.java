/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Broaster;
import beans.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class BroasterDAO {

    
    public List<Broaster> obtenerBroaster() {
        List<Broaster> broasters = new ArrayList<>();

        Conexion conexion = new Conexion();

        try {
            Connection cnx = conexion.conecta();
            String query = "SELECT * FROM broaster";
            PreparedStatement statement = cnx.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Broaster broaster = new Broaster();
                broaster.setCodigo(resultSet.getInt("codigo"));
                broaster.setNombre(resultSet.getString("nombre"));
                broaster.setDescripcion(resultSet.getString("descripcion"));
                broaster.setPrecio(resultSet.getDouble("precio"));
                broaster.setImagen(resultSet.getString("imagen"));
                broasters.add(broaster);
            }

            resultSet.close();
            statement.close();
            cnx.close();

        } catch (ClassNotFoundException | SQLException e) {
            // Manejo de excepciones (puedes redirigir a una página de error o registrar el error)
            e.printStackTrace();
        }

        return broasters;
    }
     public Broaster obtenerPromocionPorCodigo(int codigoBroaster) {
        Conexion conexion = new Conexion();
        Broaster broaster = new Broaster();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "SELECT * FROM broaster WHERE codigo = ?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setInt(1, codigoBroaster);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    broaster.setCodigo(resultSet.getInt("codigo"));
                    broaster.setNombre(resultSet.getString("nombre"));
                    broaster.setDescripcion(resultSet.getString("descripcion"));              
                    broaster.setPrecio(resultSet.getDouble("precio"));
                    broaster.setImagen(resultSet.getString("imagen"));
                }

                resultSet.close();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return broaster;
    }
      
    public boolean insertarBroaster(Broaster broaster){
    // logica para insertar en la base de datos
    Conexion conexion = new Conexion();
    try {
        Connection cnx = conexion.conecta();
        String query = "INSERT INTO broaster (nombre, descripcion, precio, imagen ) VALUES (?,?,?,?)";
        try (PreparedStatement statement = cnx.prepareStatement(query)){
        statement.setString(1, broaster.getNombre());
        statement.setString(2, broaster.getDescripcion());
            statement.setDouble(3, broaster.getPrecio());
        statement.setString(4, broaster.getImagen());
    
        // Ejecuta la consulta
        int filasAfectadas = statement.executeUpdate();
        // Si se inserto al menos una fila, considera que fue exitoso
        return filasAfectadas > 0;
        }
        
    } catch (ClassNotFoundException | SQLException e){
    e.printStackTrace();
    }
    
    return false;
    }
    public boolean eliminarBroaster(int codigoBroaster) {
    Conexion conexion = new Conexion();

    try {
        Connection cnx = conexion.conecta();
        String query = "DELETE FROM broaster WHERE codigo = ?";
        
        try (PreparedStatement statement = cnx.prepareStatement(query)) {
            statement.setInt(1, codigoBroaster);
            
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
     public boolean actualizarBroaster(int codigoBroaster, Broaster broasterEditada) {
        Conexion conexion = new Conexion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "UPDATE broaster SET nombre=?, descripcion=?, precio=?, imagen=? WHERE codigo=?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, broasterEditada.getNombre());
                statement.setString(2, broasterEditada.getDescripcion());
                statement.setObject(3, broasterEditada.getPrecio());
          
                statement.setString(4, broasterEditada.getImagen());
                statement.setInt(5, codigoBroaster);

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
