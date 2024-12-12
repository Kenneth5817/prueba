<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 12/12/2024
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Pirámide de Gatos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Crea tu pirámide de gatos</h2>
    <form action="gatoServlet" method="POST">
        <div class="mb-3">
            <label for="altura" class="form-label">Altura de la pirámide</label>
            <input type="number" class="form-control" id="altura" name="altura" required>
        </div>
        <button type="submit" class="btn btn-primary">Generar pirámide</button>
    </form>

    <div class="mt-4">
        <h3>Resultado:</h3>
        <%= request.getAttribute("piramide") != null ? request.getAttribute("piramide") : "" %>
    </div>
</div>
</body>
</html>
