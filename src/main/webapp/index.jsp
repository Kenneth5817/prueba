<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<% response.sendRedirect("login.jsp"); %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Iniciar sesión</h2>
    <form action="loginServlet" method="POST">
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre de usuario</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required>
        </div>
        <div class="mb-3">
            <label for="contra" class="form-label">Contraseña</label>
            <input type="password" class="form-control" id="contra" name="contra" required>
        </div>
        <button type="submit" class="btn btn-primary">Iniciar sesión</button>
    </form>
    <p class="text-danger">
        <%= request.getAttribute("error") != null ? "Usuario o contraseña incorrectos" : "" %>
    </p>
</div>
</body>
</html>

