<%--
  Created by IntelliJ IDEA.
  User: Familia Romero
  Date: 18-10-2024
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="/docs/5.3/assets/js/color-modes.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="/Css.css" rel="stylesheet">

    <title>Inicio de Sesión</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Productos">Mostrar todos los Productos</a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Carro.jsp">Ver Carro de compra</a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/CerrarSesion">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="form-signin w-100 m-auto text-center">
                <!-- Mostrar el mensaje de error si existe -->
                <%
                    String error = (String) request.getAttribute("error");
                    if (error != null) {
                        out.println("<div class='alert alert-danger'>" + error + "</div>");
                    }
                %>
                <form method="post" action="/ProyectoCarro/InicioSesion">  // este es el vas a revisar si n od¿funcioan************
                    <h1 class="h3 mb-3 fw-normal">Ingrese sus Credenciales</h1>

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
                        <label for="usuario">Usuario</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="clave" name="clave" placeholder="Clave">
                        <label for="clave">Clave</label>
                    </div>

                    <div class="form-check text-start my-3">
                        <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">Recuérdame</label>
                    </div>
                    <button class="btn btn-primary w-100 py-2" type="submit">Enviar</button>
                    <p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2024</p>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>