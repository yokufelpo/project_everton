/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditUserServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("id"));

    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase", "root", "password");

      PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE id=?");
      ps.setInt(1, id);

      ResultSet rs = ps.executeQuery();

      if (rs.next()) {
        request.setAttribute("id", rs.getInt("id"));
        request.setAttribute("username", rs.getString("username"));
        request.setAttribute("email", rs.getString("email"));
        request.getRequestDispatcher("edituser.jsp").forward(request, response);
      }

    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
  }
}