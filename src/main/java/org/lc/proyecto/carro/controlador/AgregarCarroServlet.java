package org.lc.proyecto.carro.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.lc.proyecto.carro.modelo.dao.ProductoDAOImp;
import org.lc.proyecto.carro.modelo.dto.Carro;
import org.lc.proyecto.carro.modelo.dto.Item;
import org.lc.proyecto.carro.modelo.dto.Producto;
import org.lc.proyecto.carro.modelo.dto.Utilitaria;

import java.io.IOException;
import java.util.Optional;

import static java.lang.Integer.parseInt;

@WebServlet("/AgregarCarro")
public class AgregarCarroServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        ProductoDAOImp productoDAO = new ProductoDAOImp();
        Utilitaria util = new Utilitaria();

        Optional<Producto> productoOptional = Optional.ofNullable(productoDAO.porId(id));

            if(productoOptional.isPresent()){
                Item item = new Item(1,productoOptional.get());
                HttpSession sesion = req.getSession();
                Carro carro;
                if(sesion.getAttribute("carro") == null){
                    carro = new Carro();
                    sesion.setAttribute("carro", carro);

                }else{
                    carro = (Carro) sesion.getAttribute("carro");
                }
                carro.setItems(item);
            }
            resp.sendRedirect(req.getContextPath() + "/verCarro");
    }
}
