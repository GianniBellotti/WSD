<%-- 
    Document   : result
    Created on : 22/05/2017, 7:44:24 PM
    Author     : jiaju
--%>

<%@page import="uts.wsd.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Result</title>
        
    </head>
    <body>
        <%User user = (User)session.getAttribute("user");%>
        <%
            if (user == null){
        %>
            <a href="login.jsp" >Login</a> | <a href="register.jsp">Register</a>
        <%}else{%>
            <i>Logged in as &lt;<%=user.getName()%>&gt;</i> | <button type="button" onclick="<%session.invalidate();%> location.reload(); ">Logout</button>
        <%}%>
        <h1>Flight listings</h1>
    </body>
</html>
