
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.lc.proyecto.carro.modelo.dto.Producto" %>
<%@ page import="java.util.Optional" %>
<html>
<head>
    <title>Agregar Producto</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

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
</nav>
</head>
<body>

<form method="post" action="/AgregarPServlet">
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Precio</th>
            <th>       </th>
        </tr>
        </thead>
        <tbody>

            <tr>
                <td> <input type="text" id="nombre" name="nombre" required> </td>
                <td> <input type="text" id="tipo" name="tipo" required> </td>
                <td> <input type="number" id="precio" name="precio" required> </td>
            </tr>
        </tbody>
    </table>
    <button type="submit" class="btn btn-primary">Agregar Producto</button>
</form>

</body>
</html>
