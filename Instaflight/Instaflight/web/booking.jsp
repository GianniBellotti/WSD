<%-- 
    Document   : booking
    Created on : 25/05/2017, 3:31:28 PM
    Author     : Gianni
--%>

<%@page import="uts.wsd.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        
        <%
            User user = (User) session.getAttribute("user");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
        %>

        <% String filePath = application.getRealPath("WEB-INF/bookings.xml"); %>
    </head>
    <body>
        <h1>Booking Details</h1>
    </body>
</html>
