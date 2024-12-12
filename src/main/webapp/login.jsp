<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 09/12/2024
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Iniciar sesión</h2>
    <form method="post" action="login.jsp">
        <div class="mb-3">
            <label for="nombre" class="form-label">Usuario</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required>
        </div>
        <div class="mb-3">
            <label for="contraseña" class="form-label">Contraseña</label>
            <input type="password" class="form-control" id="contraseña" name="contraseña" required>
        </div>
        <button type="submit" class="btn btn-primary">Acceder</button>
    </form>

    <%
        String nombre = request.getParameter("nombre");
        String contrasena = request.getParameter("contrasena");
        boolean loginCorrecto = false;

        if (nombre != null && contrasena != null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "secret");
                PreparedStatement ps = conexion.prepareStatement("SELECT * FROM usuarios WHERE nombre = ? AND contrasena = ?");
                ps.setString(1, nombre);
                ps.setString(2, contrasena);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    loginCorrecto = true;
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>

</div>
</body>
</html>
