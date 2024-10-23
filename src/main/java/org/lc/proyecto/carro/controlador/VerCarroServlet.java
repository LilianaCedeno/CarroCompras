package org.lc.proyecto.carro.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.lc.proyecto.carro.modelo.dao.ProductoDAOImp;
import org.lc.proyecto.carro.modelo.dto.Producto;

import java.io.IOException;
@WebServlet("/verCarro")
public class VerCarroServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/Carro.jsp").forward(req, resp);
    }

}

