
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Usuários</title>
</head>
<body>
    <h1>Usuários</h1>
    <table>
        <thead>
            <tr>
                <th>Nome de Usuário</th>
                <th>E-mail</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <% 
                try {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase", "root", "123a");

                  PreparedStatement ps = conn.prepareStatement("SELECT * FROM users");
                  ResultSet rs = ps.executeQuery();

                  while (rs.next()) {
            %>
                      <tr>
                          <td><%= rs.getString("username") %></td>
                          <td><%= rs.getString("email") %></td>
                          <td>
                              <a href="EditUserServlet?id=<%= rs.getInt("id") %>">Editar</a>
                              <a href="DeleteUserServlet?id=<%= rs.getInt("id") %>" onclick="return confirm('Tem certeza que deseja excluir o usuário <%= rs.getString("username") %> ?')">Excluir</a>
                          </td>
                      </tr>
            <% 
                  }
                } catch (ClassNotFoundException | SQLException e) {
                  e.printStackTrace();
                }
            %>
        </tbody>
    </table>
    <a href="logout.jsp">Sair</a>
</body>
</html>
