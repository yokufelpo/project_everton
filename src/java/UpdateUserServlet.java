/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateUserServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("id"));
    String username = request.getParameter("username");
    String email = request.getParameter("email");

    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/users", "root", "123a");

      PreparedStatement ps = conn.prepareStatement("UPDATE users SET username=?, email=? WHERE id=?");
      ps.setString(1, username);
      ps.setString(2, email);
      ps.setInt(3, id);

      ps.executeUpdate();

      response.sendRedirect("userlist.jsp");

    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
  }
}
