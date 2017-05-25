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
        <div id="page">

            <%User user = (User) session.getAttribute("user");%>
            <%
                if (user == null) {
            %>
            <div id="navigation">
                <ul>
                    <li><a href="index.jsp" class="currentpage">Home</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>	
            </div>
            <%} else if (user.getName().equals("Admin")) {%>
            <div id="navigation">
                <p><i>Logged in as &lt;<%=user.getName()%>&gt;</i></p>
                <ul>
                    <li><a href="index.jsp"class="currentpage">Home</a></li>
                    <li><a href="admin.jsp">Admin</a></li>
                    <li><button onclick="window.location.href = '/Instaflight/logout.jsp'">Logout</button></li>
                </ul>	
            </div>
            <%} else {%>
            <div id="navigation">
                <p><i>Logged in as &lt;<%=user.getName()%>&gt;</i></p>
                <ul>
                    <li><a href="index.jsp"class="currentpage">Home</a></li>
                    <li><a href="index.jsp">Booking</a></li>
                    <li><button onclick="window.location.href = '/Instaflight/logout.jsp'">Logout</button></li>
                </ul>	
            </div>
            <%}%>
            <div id="header">
                <h1>Search</h1>
            </div>
            <div id="content">
                <form action="resultN2.jsp" method="POST"> 
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
            </div>
    </body>
</html>
