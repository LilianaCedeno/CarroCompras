package org.lc.proyecto.carro.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.lc.proyecto.carro.modelo.dao.ProductoDAOImp;
import org.lc.proyecto.carro.modelo.dto.Producto;

import java.io.IOException;
import java.util.List;
@WebServlet("EliminarServlet")
public class EliminarPrductoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductoDAOImp productoDAO = new ProductoDAOImp();
        //String accion = req.getParameter("accion");

        int id = Integer.parseInt(req.getParameter("id"));
        productoDAO.eliminarProducto(id); // metodo

        // Después de eliminar, volvemos a cargar la lista de productos
        List<Producto> productos = productoDAO.listarProducto();
        req.setAttribute("productos", productos);

        // Redirigir a la página que muestra los productos
        req.getRequestDispatcher("/EliminarProducto.jsp").forward(req, resp);

        resp.sendRedirect(req.getContextPath() + "/Productos");

    }
}
