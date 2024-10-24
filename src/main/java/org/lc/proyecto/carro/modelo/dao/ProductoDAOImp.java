package org.lc.proyecto.carro.modelo.dao;
import org.lc.proyecto.carro.modelo.dto.ConexionBD;
import org.lc.proyecto.carro.modelo.dto.Producto;

import java.sql.*;
import java.util.*;

public class ProductoDAOImp implements ProductoDAO {

    private Connection conectar() throws SQLException, ClassNotFoundException {
        return ConexionBD.getInstance();
    }

    @Override
    public List<Producto> listarProducto() {
        List<Producto> productos = new ArrayList<>();
        String sql = "SELECT * FROM productos";

        try (Statement st = conectar().createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                int id = rs.getInt("id_pro");
                String nombre = rs.getString("nom_pro");
                String tipo = rs.getString("tipo_pro");
                Integer precio = rs.getInt("precio_pro");
                Producto p = new Producto();
                p.setId(id);
                p.setNombre(nombre);
                p.setTipo(tipo);
                p.setPrecio(precio);
                productos.add(p);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }

    public Producto porId(int id) {
        Producto p = null;
        String sql = "SELECT * FROM productos WHERE id_pro = ?";

        try (PreparedStatement ps = conectar().prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int idPro = rs.getInt("id_pro");
                    String nombre = rs.getString("nom_pro");
                    String tipo = rs.getString("tipo_pro");
                    Integer precio = rs.getInt("precio_pro");
                    p = new Producto();
                    p.setId(id);
                    p.setNombre(nombre);
                    p.setTipo(tipo);
                    p.setPrecio(precio);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

   public Boolean agregar(Producto p) {
        String sql = "INSERT INTO productos (nom_pro, tipo_pro, precio_pro) VALUES ('"
                + p.getNombre() + "','"
                + p.getTipo() + "',"
                + p.getPrecio() + ");";
        try (Statement st = conectar().createStatement()) {
            st.execute(sql);
            return true;

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


    public Boolean eliminar(int id) {
        String sql = "DELETE FROM productos WHERE id_pro = " + id + ";";
        try (Statement st = conectar().createStatement()) {
            st.execute(sql);
            return true;

        }catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

        public Boolean ActualizarProducto(Producto p) {
            String sql = "UPDATE productos (nom_pro, tipo_pro, precio_pro) VALUES ('"
                    + p.getNombre() + "','"
                    + p.getTipo() + "',"
                    + p.getPrecio() + ");";
            try (Statement st = conectar().createStatement()) {
                st.execute(sql);
                return true;

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return false;
            }


        }

}
    /*
    public void eliminarProducto(int id) {

        String sql = "DELETE FROM productos WHERE id_pro = ?;";
        try (PreparedStatement ps = conectar().prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();

        }catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                System.out.println("Error al eliminar el producto: " + e.getMessage());
        }
    }*/


        /*public void agregarProducto(Producto producto) {
            String sql = "INSERT INTO productos (nom_pro, tipo_pro, precio_pro) VALUES (?, ?, ?);";
            try (PreparedStatement ps = conectar().prepareStatement(sql)) {

                ps.setString(1, producto.getNombre());
                ps.setString(2, producto.getTipo());
                ps.setInt(3, producto.getPrecio());
                ps.executeUpdate();

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }*/


