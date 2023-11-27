/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Hamburguesa;
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
public class HamburguesaDAO {
    
     public List<Hamburguesa> obtenerHamburguesa() {
        List<Hamburguesa> hamburguesas = new ArrayList<>();

        Conexion conexion = new Conexion();

        try {
            Connection cnx = conexion.conecta();
            String query = "SELECT * FROM hamburguesa";
            PreparedStatement statement = cnx.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Hamburguesa hamburguesa = new Hamburguesa();
                
                hamburguesa.setId(resultSet.getInt("id"));
                hamburguesa.setNombre(resultSet.getString("nombre"));
                hamburguesa.setDescripcion(resultSet.getString("descripcion"));
                hamburguesa.setPrecio(resultSet.getDouble("precio"));
                hamburguesa.setFotoHamburguesa(resultSet.getString("fotoHamburguesa"));

                
                hamburguesas.add(hamburguesa);
            }

            resultSet.close();
            statement.close();
            cnx.close();

        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();
        }

        return hamburguesas;
    }
        public Hamburguesa obtenerHamburguesaPorCodigo(int idHamburguesa) {
        Conexion conexion = new Conexion();
        Hamburguesa hmburguesa = new Hamburguesa();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "SELECT * FROM hamburguesa WHERE id = ?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setInt(1, idHamburguesa);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    hmburguesa.setId(resultSet.getInt("id"));
                    hmburguesa.setNombre(resultSet.getString("nombre"));
                    hmburguesa.setDescripcion(resultSet.getString("descripcion"));
                    hmburguesa.setPrecio(resultSet.getDouble("precio"));
                    hmburguesa.setFotoHamburguesa(resultSet.getString("fotoHamburguesa"));

                }

                resultSet.close();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return hmburguesa;
    }
        
      public boolean insertarHamburguesa(Hamburguesa hamburguesa) {

        Conexion conexion = new Conexion();
        try {
            Connection cnx = conexion.conecta();
            String query = "INSERT INTO hamburguesa (nombre, descripcion, precio, fotoHamburguesa) VALUES (?, ?, ?, ?)";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, hamburguesa.getNombre());
                statement.setString(2, hamburguesa.getDescripcion());
                statement.setDouble(3, hamburguesa.getPrecio());
                statement.setString(4, hamburguesa.getFotoHamburguesa());

                int filasAfectadas = statement.executeUpdate();
                return filasAfectadas > 0;
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Maneja la excepción según tus necesidades
        }
        return false;
    }
       public boolean eliminarHamburguesa(int idHamburguesa) {
    Conexion conexion = new Conexion();

    try {
        Connection cnx = conexion.conecta();
        String query = "DELETE FROM hamburguesa WHERE id = ?";
        
        try (PreparedStatement statement = cnx.prepareStatement(query)) {
            statement.setInt(1, idHamburguesa);
            
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
         public boolean actualizarHamburguesa(int idHamburguesa, Hamburguesa hamburguesaEditada) {
        Conexion conexion = new Conexion();

        try {
            java.sql.Connection cnx = conexion.conecta();
            String query = "UPDATE hamburguesa SET nombre=?, descripcion=?, precio=?,fotoHamburguesa =? WHERE id=?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                
                statement.setString(1, hamburguesaEditada.getNombre());
                statement.setString(2, hamburguesaEditada.getDescripcion());
                  statement.setObject(3, hamburguesaEditada.getPrecio());
                statement.setString(4, hamburguesaEditada.getFotoHamburguesa());
    
              
                statement.setInt(5, idHamburguesa);

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
