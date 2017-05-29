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
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Login</title>
    </head>
    <body>
        <div id="page">
            <div id="navigation">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp" class="currentpage">Login</a></li>
                </ul>	
            </div>
            <div id="header">
                <h1>Login</h1>
            </div>
            <form action="loginAction.jsp" method="POST"> <%-- simple login form --%>
                <table class="mflight">
                    <tr><td>Email</td><td><input type="text" name="email"></td></tr>
                    <tr><td>Password</td><td><input type="password" name="password"></td></tr>
                </table>
                <input type="submit" value="Login">
            </form>
    </body>
</html>
