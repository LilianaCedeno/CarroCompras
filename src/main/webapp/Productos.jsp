<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.lc.proyecto.carro.modelo.dto.Producto" %>
<%@ page import="java.util.Optional" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Carro.jsp"> Ver Carro de compra </a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/CerrarSesion"> Cerrar Sesión </a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <h1 class="text-center">Listado de Productos</h1>
   / <%
        Optional<String> usuario = Optional.ofNullable((String) request.getAttribute("usuario"));
        if (usuario.isPresent()) {
            out.println("<h4> " + usuario.get() + "</h4>");
        }
    %>

    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Precio</th>
            <th>Agregar al Carro</th>
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
            <td><%= p.getPrecio() %></td>
            <td><a href="<%= request.getContextPath() + "/AgregarCarro?id=" + p.getId() %>">Agregar al carro</a></td>
        </tr>
        <%
            }
        %>

       </tbody>
    </table>
</div>
<div>
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/AgregarProducto.jsp"> Agregar Productos </a> </li>
        <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/EliminarProducto.jsp"> Eliminar Productos </a></li>
    </ul>
</div>
</body>
</html>

