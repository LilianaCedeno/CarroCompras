<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="org.lc.proyecto.carro.modelo.dto.Producto" %>
<%@ page import="java.util.Optional" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Proyecto Carro de Compra</title>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">
     <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                    <li class="nav-i"><a class="nav-link" href="/ProyectoCarro/login.jsp"> Iniciar Sesión</a> </li>
                    <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Productos"> Mostrar todos los Productos </a></li>
                    <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Carro.jsp"> Ver Carro de compra </a></li>
                    <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/CerrarSesion"> Cerrar Sesión </a></li>
            </ul>
        </div>
    </div>
</nav>

<h1 class="text-center">  Tienda de Articulos de oficina</h1>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
