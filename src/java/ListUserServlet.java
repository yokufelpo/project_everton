import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ListUserServlet")
public class ListUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Configurações do banco de dados
        String url = "jdbc:mysql://localhost:3306/users?useSSL=false";
        String usuario = "root";
        String senha = "123";

        List<User> listaUsuarios = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(url, usuario, senha)) {
            String sql = "SELECT * FROM users";

            PreparedStatement statement = conn.prepareStatement(sql);

            ResultSet result = statement.executeQuery();

            while (result.next()) {
                int id = result.getInt("id");
                String username = result.getString("username");
                String email = result.getString("email");

                User users = new User(id, username, email);

                listaUsuarios.add(users);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        request.setAttribute("listaUsuarios", listaUsuarios);

        request.getRequestDispatcher("userlist.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
