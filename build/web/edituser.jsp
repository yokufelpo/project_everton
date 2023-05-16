<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.cc">
<title>Editar Usuário</title>
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
        font-size: 60px;
    }
    
    .cont {
       padding: 20px;
       gap: 90px;
    }
    .input-cont {
        padding: 10px;
        font-size: 20px;
    }
    
    input {
        height: 35px;
    }
        
    </style>
</head>
<body>
    <h1>Editar Usuário</h1>
    <form class="cont" action="UpdateUserServlet" method="post">
        <input type="hidden" name="id" value="${id}" />
        <label class="input-cont" for="username">Username:</label>
        <input type="text" name="username" value="${user}" /><br />
        <label class="input-cont" for="senha">Password:</label>
        <input type="password" name="esenha" value="${senha}" /><br />
        <input type="submit" value="Salvar" />
        <input type="submit" value="Salvar" href="userlist.jsp" />
    </form>
    <a href="userlist.jsp">Voltar</a>
</body>
</html>
