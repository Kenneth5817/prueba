<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 09/12/2024
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pirámide de Gatos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Construye tu pirámide de gatos</h2>
    <form method="post" action="piramide.jsp" class="mb-3">
        <div class="mb-3">
            <label for="altura" class="form-label">Altura de la pirámide</label>
            <input type="number" class="form-control" id="altura" name="altura" min="1" required>
        </div>
        <button type="submit" class="btn btn-primary">Construir</button>
    </form>

    <%
        String alturaParam = request.getParameter("altura");
        if (alturaParam != null) {
            int altura = Integer.parseInt(alturaParam);

            out.println("<div class='text-center'>");
            for (int i = 1; i <= altura; i++) {
                for (int j = 1; j <= i; j++) {
                    out.print("<img src='https://placekitten.com/50/50' alt='gato' class='m-1'>");
                }
                out.println("<br>");
            }
            out.println("</div>");
        }
    %>
</div>
</body>
</html>
