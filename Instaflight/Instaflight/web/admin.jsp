
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

        <%User user = (User) session.getAttribute("user");%>
        <%
            if (user == null) {
        %>

        <p><a href="login.jsp" >Login</a> | <a href="register.jsp">Register</a></p>
        <h1>Manage Flight</h1>
        <p><b>Access denied. Please log in.</b>

            <%} else if (user.getName().equals("Admin")) {%>
        <table>
            <tr><td><i>Logged in as &lt;<%=user.getName()%>&gt;</i></td>
                <td><a href="logout.jsp">Logout</a></td><td><a href="admin.jsp">Manage Flight</a></td></tr>
        </table>
        <h1>Manage Flight</h1>
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
