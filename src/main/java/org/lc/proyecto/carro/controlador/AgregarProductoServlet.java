package org.lc.proyecto.carro.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.lc.proyecto.carro.modelo.dao.ProductoDAOImp;
import org.lc.proyecto.carro.modelo.dto.Producto;

import java.io.IOException;
@WebServlet("AgregarPServlet")
public class AgregarProductoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductoDAOImp productoDAO = new ProductoDAOImp();
        //String accion = req.getParameter("accion");

            String nombre = req.getParameter("nombre");
            String tipo = req.getParameter("tipo");
            int precio = Integer.parseInt(req.getParameter("precio"));
            Producto producto = new Producto();
            producto.setNombre(nombre);
            producto.setTipo(tipo);
            producto.setPrecio(precio);
            productoDAO.agregarProducto(producto);



        }
}
