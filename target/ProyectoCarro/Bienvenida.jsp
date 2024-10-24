<%@ page import="java.util.Optional" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenida</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
</nav>

<div class="container">
    <h1 Class="text-center">Bienvenido:  </h1>

     <%

        Optional<String> usuario = Optional.ofNullable((String) request.getAttribute("usuario"));
        if (usuario.isPresent()) {
            out.println("<h2>Hola, " + usuario + ".</h2>");
        } else {
            out.println("<h2>No se ha iniciado sesión.</h2>");
        }
    %>
</div>
</body>
</html>