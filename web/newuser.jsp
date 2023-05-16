<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New User</title>
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
    <h1>Novo Usuário</h1>
    <form method="post" action="NewUserServlet">
        <table class="cont">
            <tr>
                <td class="input-cont">Username:</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td class="input-cont">Password:</td>
                <td><input type="password" name="senha"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Criar Usuário"></td>
                <td colspan="2"><input type="submit" value="Cancelar" href="userlist.jsp"></td>
            </tr>
        </table>
    </form>
</body>
</html>