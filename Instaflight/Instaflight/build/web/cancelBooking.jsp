<%-- 
    Document   : cancelBooking
    Created on : 29/05/2017, 8:32:09 PM
    Author     : jiaju
--%>

<%@page import="uts.wsd.Booking"%>
<%@page import="uts.wsd.Bookings"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String custID = request.getParameter("custID");
            
        %>
        <% String filePath = application.getRealPath("WEB-INF/bookings.xml");%>
        <jsp:useBean id="bookingApp" class="uts.wsd.bookingApplication" scope="application">
            <jsp:setProperty name="bookingApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            Bookings bookings = bookingApp.getBookings();  
            Booking booking = bookingApp.getBookingByID(Integer.parseInt(custID));
            bookings.removeBooking(booking);
            bookingApp.updateXML(bookings, filePath);%> <%-- search and delect user's currect booking from booking.xml--%>
            <h4>Booking canceled for the flight: <%=booking.getFlightID()%></h4>
            <a href="index.jsp">Click here to return to main</a>
    </body>
</html>
