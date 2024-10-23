package org.lc.proyecto.carro.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.lc.proyecto.carro.modelo.dto.Producto;
import org.lc.proyecto.carro.modelo.dao.ProductoDAOImp;
import org.lc.proyecto.carro.modelo.dto.Utilitaria;

import java.io.IOException;
import java.util.List;
import java.util.Optional;


@WebServlet({"/ProductosGet", "/Productos"})
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Utilitaria util = new Utilitaria();
        ProductoDAOImp productoDAO = new ProductoDAOImp();
        List<Producto> productos = productoDAO.listarProducto();
        Optional<String> optionalUsuario = util.obtenerUsuario(req);

        req.setAttribute("productos", productos);
        req.setAttribute("usuario", optionalUsuario.orElse(null));
        req.getRequestDispatcher("/Productos.jsp").forward(req, resp);
    }
}
