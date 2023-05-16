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
    <title>Lista de usuários</title>  
    <style>
       
        * {
    box-sizing: border-box;
    padding: 0;
    margin: 0;

    }

    body {
        font-family: 'Helvetica', Tahoma, Geneva, Verdana, sans-serif;
        text-decoration: none;
         background-image: linear-gradient(to right, #736C5F, #595036);
        color: white;
        box-sizing: border-box;
        padding: 0;  

    }

    h1 {
        color: #D9D8D7;
        font-size: 60px;
    }
    
    .cont {
        color: black;
        font-size: 20px;
        border: 3px solid #BFB999;
        width: 25vw;
        display: flex;
        justify-content: space-between;
        flex: auto;
    }
    .test {
    display: flex;
    justify-content: space-between;
    flex: auto;
    text-decoration: none;
    font-size: 10px;
    }
    .test th {
    text-decoration: none;
    justify-content: space-between;
    color: white;
    padding: 40px;
    flex: auto;
    text-align: center;
    font-weight: 500;
    max-height: 80px;
    font-size: 30px;
    
}

    .test a{
        text-decoration: none;
        color: white;
        font-size: 20px;
}

.new a {
    text-decoration: none;
        color: white;
        font-size: 20px;
        Padding: 40px;
}

    </style>
    
</head>
<body>
    <div>
    <h1>Lista de usuários</h1>
    <div class="cont">        
       <table class="test"> 
            <tr >
              <th>ID</th>
              <th>Nome</th>
              <th>Ações</th>
          </tr>
          <c:forEach var="user" items="${userList}">
              <tr>
                  <td>${user.id}</td>
                  <td>${user.username}</td> 
                  <td>
                      <a href="edituser.jsp">Editar</a> |
                      <a href="DeleteUserSdrvlet.java">Excluir</a>
                  </td>
              </tr>
          </c:forEach>
      </table></div>

      </div>
                  <div class="new"><a href="newuser.jsp">Criar Novo Usuário</a></div>
              
  </body>
  </html>