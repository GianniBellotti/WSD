<%-- 
    Document   : main
    Created on : 20/05/2017, 1:19:54 PM
    Author     : jiaju
--%>

<%@page import="uts.wsd.Booking"%>
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
            <div id="header">
                <h1>Search</h1>
            </div>
            <%
                User user = (User) session.getAttribute("user");

                if (user == null) { // checks for whether user is visitor, customer or admin and displays appropriate nav bar
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
                <ul>
                    <li><a href="index.jsp"class="currentpage">Home</a></li>
                    <li><a href="admin.jsp">Admin</a></li>
                    <li><button onclick="window.location.href = '/Instaflight/logout.jsp'">Logout</button></li>
                </ul>	
            </div>
                            <p><i>Logged in as &lt;<%=user.getName()%>&gt;</i></p>
            <%} else {%>
            <div id="navigation">               
                <ul>
                    <li><a href="index.jsp"class="currentpage">Home</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><button onclick="window.location.href = '/Instaflight/logout.jsp'">Logout</button></li>
                </ul>	
            </div>
                            <p><i>Logged in as &lt;<%=user.getName()%>&gt;</i></p>
            <%}%>          
            <div id="content"> 
                <form action="resultN2.jsp" method="POST">  <%-- main search flight form --%>
                    <table>
                        <tr><td>From</td><td><input type="text" name="from" size="25"></td><td>To</td><td><input type="text" name="to" size="25"></td></tr>

                        <tr><td>Departure Date</td><td><input name="departDate" min="2017-05-22" type="date"></td></tr>

                        <tr><td>Return Date</td><td><input name="returnDate" min="2017-05-22" type="date"></td></tr>
                        <tr><td>Type</td><td><select name="select">
                                    <option value=""></option>
                                    <option value="economy">economy</option>
                                    <option value="business">business</option>
                                      </select></td>
                        </tr>
                    </table>
                    <input type="submit" value="Search">

                </form>
            </div>
    </body>
</html>
