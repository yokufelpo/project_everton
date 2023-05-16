<%-- 
    Document   : cadPessoa
    Created on : 14 de mai. de 2023, 15:03:33
    Author     : galex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    
    </head>
    <body>
        <<form name="formulario" action="UserServlet" method="PHOST">
            
            <table border="0">
                <thead>
                    <tr>
                        <th> Cadastro de Pessoa </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td> Username: </td>
                        <td> <input type="text" name="username" value="" size="30" /> </td>
                    </tr>
                    <tr>
                        <td> Email: </td>
                        <td> <input type="text" name="email" value="" size="30" /> </td>
                    <tr>
                        <td> <input type="submit" value="Enviar" name="enviar" />  </td>
                        <td> <input type="reset" value="Limpar" name="limpar" />  </td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
