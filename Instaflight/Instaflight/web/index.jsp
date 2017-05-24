<%-- 
    Document   : main
    Created on : 20/05/2017, 1:19:54 PM
    Author     : jiaju
--%>

<%@page import="uts.wsd.User"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
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
        <h1>Search</h1>
        <form action="result.jsp" method="POST">
            <table>
                <tr><td>From</td><td><input type="text" name="from" size="25"></td><td>To</td><td><input type="text" name="to" size="25"></td></tr>
                
                <tr><td>Departure Date</td><td><input id="date" min="2017-05-22" type="date"></td></tr>
                
                <tr><td>Return Date</td><td><input id="date" min="2017-05-22" type="date"></td></tr>
            </table>
            <input type="submit" value="Search">
            
        </form>
    </body>
</html>
