<%-- 
    Document   : login
    Created on : 25/05/2017, 2:01:32 PM
    Author     : andrew
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
        <title>Admin</title>
    </head>
    <body>

        <div id="page">

            <%User user = (User) session.getAttribute("user");%>
            <%
                if (user == null) {
            %>
            <div id="navigation">
                <ul>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>	
            </div>
            <div id="header">
                <h1>Admin</h1>
            </div>
            <p><b>Access denied. Please log in.</b>

                <%} else if (user.getName().equals("Admin")) {%>
            <table>
                <tr><td><i>Logged in as &lt;<%=user.getName()%>&gt;</i></td>
                    <td><a href="logout.jsp">Logout</a></td><td><a href="admin.jsp">Manage Flight</a></td></tr>
            </table>
            <div id="header">
                <h1>Admin</h1>
            </div>
            <table class="mflight">
                <tr><td><button onclick="window.location.href = '/Instaflight/book.jsp'">View all Bookings</button></td></tr>
                <tr><td><button onclick="window.location.href = '/Instaflight/book.jsp'">View booking details</button></td></tr>
                <tr><td><button onclick="window.location.href = '/Instaflight/book.jsp'">Edit a booking</button></td></tr>
                <tr><td><button onclick="window.location.href = '/Instaflight/book.jsp'">Cancel a booking</button></td></tr>

                </tr>
            </table>
            <%} else {%>
            <i>Logged in as &lt;<%=user.getName()%>&gt;</i> | <button type="button" onclick="<%session.invalidate();%> location.reload();">Logout</button>
            <%}%>



    </body>
</html>
