
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="org.lc.proyecto.carro.modelo.dto.Carro" %>
<%@ page import="org.lc.proyecto.carro.modelo.dto.Item" %>
<%
  Carro carro = (Carro) session.getAttribute("carro");
%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Carro de Compras</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/index.jsp">Inicio</a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Productos"> Mostrar todos los Productos </a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/Productos">Seguir comprando</a></li>
                <li class="nav-item"><a class="nav-link" href="/ProyectoCarro/CerrarSesion"> Cerrar Sesión </a></li>

            </ul>
        </div>
    </div>
</nav>
<h1 class="text-center">  Carro de Compras</h1>

<% if (carro == null || carro.getItems().isEmpty()){%>
    <p> Lo siento pero no hat productos en el carro de compras</p>
<%} else{%>
  <table class="table">
    <tr>
      <th>Id</th>
      <th>Nombre</th>
      <th></th>
      <th>Total</th>
    </tr>
    <% for(Item item: carro.getItems()){%>
    <tr>
      <td><%=item.getProducto().getId()%></td>
      <td><%=item.getProducto().getNombre()%></td>
      <td><%=item.getProducto().getPrecio()%></td>
      <td><%=item.getCantidad()%></td>
      <td><%=item.getTotal()%></td>
   </tr>
    <%}%>
    <tr>
      <td colspan="4">Total</td>
      <td><%=carro.getTotal()%></td>
    </tr>
  </table>
<%}%>
</body>
</html>
