import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, ServletException {
        String nombre = request.getParameter("nombre");
        String contra = request.getParameter("contra");

        // Comprobamos si las credenciales son correctas
        if (validarCredenciales(nombre, contra)) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("error", "Usuario o contraseña incorrectos");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    private boolean validarCredenciales(String nombre, String contra) {
        return "usuario".equals(nombre) && "contraseña".equals(contra);
    }
}
