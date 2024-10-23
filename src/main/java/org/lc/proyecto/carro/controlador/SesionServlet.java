package org.lc.proyecto.carro.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.lc.proyecto.carro.modelo.dto.ConexionBD;
import java.io.IOException;
import java.sql.*;

@WebServlet({"/InicioSesion","/InicioSesionGet"})
public class SesionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String u = req.getParameter("usuario");
        String c = req.getParameter("clave");
        String sql = "select * from usuarios where nom_usu = '" + u + "' and cla_usu = '" + c + "';";

        try (Statement st = ConexionBD.getInstance().createStatement();
             ResultSet rs = st.executeQuery(sql)
        ){

            if (rs.next()) {
                HttpSession sesion = req.getSession();
                sesion.setAttribute("usuario", rs.getString("nom_usu"));
                resp.sendRedirect(req.getContextPath() + "/InicioSesionGet");
            } else {
                req.setAttribute("error", "Usuario o clave incorrecta");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            }

        } catch (ClassNotFoundException| SQLException e) {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "error" + e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/login.jsp").forward(req, resp);
        //getServletContext().getRequestDispatcher("/InicioSesionGet").forward(req, resp);
    }
}

        /*
        Utilitaria util = new Utilitaria();

        Optional<String> sessionOptional = util.obtenerUsuario(req);

        if(sessionOptional.isPresent()){
            resp.setContentType("text/html");
            PrintWriter out = resp.getWriter();

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("  <head>");
            out.println("    <meta chartset=\"UTF-8\">");
            out.println("    <title>Servlet</title>");
            out.println("  </head>");
            out.println("  <body>");
            out.println("      <h1>Servlet de Inicio de Sesión</h1>");
            out.println("      <p>Bienvenido Usario  "+ sessionOptional.get() +".</p>");
            out.println("      <ul>");
            out.println("          <li> <a href= index.jsp> Volver al Inicio.  </a></li>");
            out.println("          <li> <a href= CerrarSesion> Cerrar Sesión.  </a></li>");
            out.println("      </ul>");
            out.println("  </body>");
            out.println("</html>");
            out.close();
        }else{
            getServletContext().getRequestDispatcher("/InicioSesionGet").forward(req, resp);
        }
    }*/

