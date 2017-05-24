<%-- 
    Document   : register
    Created on : 23/05/2017, 12:35:33 PM
    Author     : jiaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        
    </head>
    <body>
        <h1>Register</h1>
        <form action="welcome.jsp" method="POST">
            <table>
                <tr><td>Email</td><td><input type="text" name="email" size="25"></td></tr>
                <tr><td>Full Name</td><td><input type="text" name="name" size="25"></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" size="25"></td></tr>
                <tr><td>Date of Birth</td><td><input type="date" name="dob"</td></tr>
            </table>
            <input type="submit" value="Register">
            
        </form>
    </body>
</html>
