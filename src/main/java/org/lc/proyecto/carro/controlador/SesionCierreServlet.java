package org.lc.proyecto.carro.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.lc.proyecto.carro.modelo.dto.Utilitaria;

import java.io.IOException;
import java.util.*;

@WebServlet("/CerrarSesion")
public class SesionCierreServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Utilitaria util = new Utilitaria();
       Optional<String> optionalUsuario = util.obtenerUsuario(req);

       if(optionalUsuario.isPresent()){
           HttpSession sesion = req.getSession();
           sesion.invalidate();
       }
       resp.sendRedirect("/login.jsp");

    }
}
