<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.lc.proyecto.carro.modelo.dto.Producto" %>
<%@ page import="java.util.Optional" %>

<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Listado de Productos</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Productos"> Mostrar todos los Productos </a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Carro.jsp"> Ver Carro de compra </a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/CerrarSesion"> Cerrar Sesión </a></li>
            </ul>
        </div>
    </div>
</nav>>
<div class="container">
    <h1 class="text-center">Listado de Productos</h1>
   <%
        Optional<String> usuario = Optional.ofNullable((String) request.getAttribute("usuario"));
        if (usuario.isPresent()) {
            out.println("<h4> " + usuario.get() + "</h4>");
            out.println("<td><a href=\""+request.getContextPath() + "/AgregarProducto.jsp" +"\"> Agregar Productos </a></td>");
        }
    %>

    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <%
                    if (usuario.isPresent()) {
                        out.println("  <th>Precio</th>");
                        out.println("  <th>Agregar al carro</th>");
                        out.println("  <th>Eliminar Porducto</th>");


                }
            %>
        </tr>
        </thead>
        <tbody>
        <%
            List<Producto> productos = (List<Producto>) request.getAttribute("productos");
            for (Producto p : productos) {
        %>
        <tr>
            <td><%= p.getId() %></td>
            <td><%= p.getNombre() %></td>
            <td><%= p.getTipo() %></td>
                <%
                if (usuario.isPresent()) {
                 out.println("  <td>$" +p.getPrecio()+ "</td>");
                 out.println("<td><a href=\""+request.getContextPath() + "/AgregarCarro?id=" + p.getId()+"\"> Agregar al carro</a></td>");
                 out.println("<td><a href=\"" +request.getContextPath() + "/EliminarServlet?id=" + p.getId()+"\">Eliminar</a></td>");
                }
                %>
        </tr>
        <%
        }
        %>
       </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>