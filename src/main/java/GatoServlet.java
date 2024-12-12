import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
 @WebServlet("/gatoServlet")
    public class GatoServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int altura = Integer.parseInt(request.getParameter("altura"));

            // Generar pirámide de gatos
            StringBuilder piramide = new StringBuilder();
            for (int i = 1; i <= altura; i++) {
                for (int j = 0; j < i; j++) {
                    piramide.append("<img src='img/gatito.png' alt='Gato' style='width:50px;'>");
                }
                piramide.append("<br>");
            }

            // Pasamos la pirámide al JSP para mostrarla
            request.setAttribute("piramide", piramide.toString());
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        }
    }
