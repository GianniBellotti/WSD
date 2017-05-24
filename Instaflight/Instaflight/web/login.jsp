<%-- 
    Document   : login
    Created on : 22/05/2017, 8:01:32 PM
    Author     : jiaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="loginAction.jsp" method="POST">
            <table>
                <tr><td>Email</td><td><input type="text" name="email"></td></tr>
                <tr><td>Password</td><td><input type="password" name="password"></td></tr>
            </table>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
