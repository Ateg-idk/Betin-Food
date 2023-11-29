package ModeloDAO;

import Modelo.Registrar;
import beans.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RegitrarDAO {
    public List<Registrar> obtenerRegistrar() {
        List<Registrar> registraru = new ArrayList<>();

        try (Connection cnx = new Conexion().conecta()) {
            String query = "SELECT * FROM registrar";
            try (PreparedStatement statement = cnx.prepareStatement(query);
                 ResultSet resultSet = statement.executeQuery()) {

                while (resultSet.next()) {
                    Registrar registrar = new Registrar();
                    registrar.setId(resultSet.getInt("id"));
                    registrar.setNombre(resultSet.getString("nombre"));
                    registrar.setApellido(resultSet.getString("apellido"));
                    registrar.setDireccion(resultSet.getString("direccion"));
                    registrar.setCorreo(resultSet.getString("correo"));
                    registrar.setDni(resultSet.getString("dni"));
                    registrar.setPassword(resultSet.getString("password"));

                    registraru.add(registrar);
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException("Error al obtener registros", e);
        }

        return registraru;
    }
      public Registrar obtenerUsuarioPorCorreo(String correo) {
        Conexion conexion = new Conexion();
        Registrar usuario = null;

        try {
            Connection cnx = conexion.conecta();
            String query = "SELECT * FROM registrar WHERE correo = ?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, correo);

                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    usuario = new Registrar();
                    usuario.setId(resultSet.getInt("id"));
                    usuario.setNombre(resultSet.getString("nombre"));
                    usuario.setApellido(resultSet.getString("apellido"));
                    usuario.setDireccion(resultSet.getString("direccion"));
                    usuario.setCorreo(resultSet.getString("correo"));
                    usuario.setDni(resultSet.getString("dni"));
                    usuario.setPassword(resultSet.getString("password"));
                }

                resultSet.close();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Maneja la excepción según tus necesidades
        }

        return usuario;
    }

    public boolean insertarRegistrar(Registrar registrar) {
        try (Connection cnx = new Conexion().conecta()) {
            String query = "INSERT INTO registrar (nombre, apellido, direccion, correo, dni, password) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, registrar.getNombre());
                statement.setString(2, registrar.getApellido());
                statement.setString(3, registrar.getDireccion());
                statement.setString(4, registrar.getCorreo());
                statement.setString(5, registrar.getDni());
                statement.setString(6, registrar.getPassword());

                int filasAfectadas = statement.executeUpdate();
                return filasAfectadas > 0;
            }

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException("Error al insertar registro", e);
        }
    }

    public boolean validarUsuario(String correo, String password) {
        try (Connection cnx = new Conexion().conecta()) {
            String query = "SELECT * FROM registrar WHERE correo = ? AND password = ?";
            try (PreparedStatement statement = cnx.prepareStatement(query)) {
                statement.setString(1, correo);
                statement.setString(2, password);

                try (ResultSet resultSet = statement.executeQuery()) {
                    return resultSet.next();
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException("Error al validar usuario", e);
        }
    }
}