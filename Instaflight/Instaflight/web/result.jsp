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
        <title>Result</title>
        
    </head>
    <body>
        <%User user = (User)session.getAttribute("user");%>
        <%
            if (user == null){
        %>
        <table>
            <tr><td><a href="login.jsp" >Login</a></td><td><a href="register.jsp">Register</a></td></tr>
        </table>
        <%}else{%>
        <table>
            <tr><td><i>Logged in as &lt;<%=user.getName()%>&gt;</i></td>
            <td><a href="logout.jsp">Logout</a></td></tr>
        </table>
        <%}%>
        <h1>Flight listings</h1>
    </body>
</html>
