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
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Home</title>
    </head>
    <body>
        <%User user = (User)session.getAttribute("user");%>
        <%
            if (user == null){
        %>
        
        <p><a href="login.jsp" >Login</a> | <a href="register.jsp">Register</a></p>
    
        <%}else if(user.getName().equals("Admin")){%>
            <table>
            <tr><td><i>Logged in as &lt;<%=user.getName()%>&gt;</i></td>
                <td><a href="logout.jsp">Logout</a></td><td><a href="admin.jsp">Manage Flight</a></td></tr>
            </table>
        <%}else{%>
            <i>Logged in as &lt;<%=user.getName()%>&gt;</i> | <button type="button" onclick="<%session.invalidate();%> location.reload(); ">Logout</button>
        <%}%>
        <h1>Search</h1>
        <form action="result.jsp" method="POST">
            <table>
                <tr><td>From</td><td><input type="text" name="from" size="25"></td><td>To</td><td><input type="text" name="to" size="25"></td></tr>
                
                <tr><td>Departure Date</td><td><input id="date" min="2017-05-22" type="date"></td></tr>
                
                <tr><td>Return Date</td><td><input id="date" min="2017-05-22" type="date"></td></tr>
                <tr><td>Type</td><td><input type="radio" name="type" value="economy" checked> Economy<br>
                        <input type="radio" name="type" value="business"> Business<br></td>
                </tr>
            </table>
            <input type="submit" value="Search">
            
        </form>
    </body>
</html>
