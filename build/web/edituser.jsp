<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Usuário</title>
</head>
<body>
    <h1>Editar Usuário</h1>
    <form action="UpdateUserServlet" method="post">
        <input type="hidden" name="id" value="${id}" />
        <label for="username">Nome de Usuário:</label>
        <input type="text" name="username" value="${username}" /><br />
        <label for="email">E-mail:</label>
        <input type="email" name="email" value="${email}" /><br />
        <input type="submit" value="Salvar" />
    </form>
    <a href="userlist.jsp">Voltar</a>
</body>
</html>
