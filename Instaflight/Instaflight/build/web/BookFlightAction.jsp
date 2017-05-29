<%-- 
    Document   : BookFlightAction
    Created on : 29/05/2017, 6:10:16 PM
    Author     : jiaju
--%>

<%@page import="uts.wsd.Bookings"%>
<%@page import="uts.wsd.Booking"%>
<%@page import="uts.wsd.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/bookings.xml");%>
        <jsp:useBean id="bookingApp" class="uts.wsd.bookingApplication" scope="application">
            <jsp:setProperty name="bookingApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            String idStr = request.getParameter("id");
            int id = Integer.valueOf(idStr);
            User user = (User) session.getAttribute("user");
            Bookings bookings = bookingApp.getBookings();  
            Booking b2 = new Booking(user.getName(),user.getEmail(),Integer.valueOf(user.getCustomerid()),id);
            bookings.addBooking(b2);
            bookingApp.updateXML(bookings, filePath);%>
        <h1>Flight booked, flight ID is <%=id%></h1>
            
    </body>
</html>
