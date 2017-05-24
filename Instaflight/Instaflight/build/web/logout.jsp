<%-- 
    Document   : logout
    Created on : 23/05/2017, 12:09:51 PM
    Author     : jiaju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <p>You have been logged out. Click <a href="index.jsp">here</a> to return to the main page.</p>
        <%session.invalidate();%>
    </body>
</html>
