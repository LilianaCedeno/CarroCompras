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
@WebServlet("/EliminarServlet")
public class EliminarPrductoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductoDAOImp productoDAO = new ProductoDAOImp();
        int id = Integer.parseInt(req.getParameter("id"));
        try{
            id = Integer.parseInt(req.getParameter("id"));

        }catch (NumberFormatException e){
            id =0;
            e.printStackTrace();
        }

        if(id>0){
            productoDAO.eliminar(id);
        }
        resp.sendRedirect(req.getContextPath()+"/ProductosGet");
    }
}

