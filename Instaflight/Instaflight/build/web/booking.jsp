<%-- 
    Document   : booking
    Created on : 25/05/2017, 5:17:30 PM
    Author     : Gianni
--%>

<%@page import="uts.wsd.User"%>
<%@page import="java.lang.String"%>
<%@page import="uts.wsd.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.wsd.Booking"%>
<%@page import="uts.wsd.Airline"%>
<%@page import="uts.wsd.Bookings"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
    </head>
    <body>
        <%
            String idStr = request.getParameter("id");
            int id = Integer.valueOf(idStr);
            
            session.setAttribute("Referer", request.getHeader("Referer"));
        %>
       
        <% String filePath = application.getRealPath("WEB-INF/bookings.xml");%>
        <jsp:useBean id="bookingApp" class="uts.wsd.bookingApplication" scope="application">
            <jsp:setProperty name="bookingApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            Bookings bookings = bookingApp.getBookings();           
            User user = (User) session.getAttribute("user");
            String custID = user.getCustomerid();
            int customerID = Integer.valueOf(custID);
            Booking booking = bookings.getBookingbyID(customerID);
                    
            if(booking != null) {
        %>
        
        <h1>Booking</h1>
        <p>Name: <%= booking.getName() %></p>
        <p>Email: <%= booking.getEmail() %></p>
        <p>CustomerID: <%= user.getCustomerid() %></p>
        <p>FlightID: <%= id %></p>
        
        <%
            } else {
            String flightFilePath = application.getRealPath("WEB-INF/flights.xml");
        %>
        <jsp:useBean id="airlineDao" class="uts.wsd.AirlineJaxbDAO" scope="application">
            <jsp:setProperty name="airlineDao" property="flightFilePath" value="<%=flightFilePath%>"/>
        </jsp:useBean>
        <% Airline airline = airlineDao.getAirline(); %>
        <p>
            <%=airline.getFlightbyID(id).getID()%>
            <%=airline.getFlightbyID(id).getOrigin()%>
            <%=airline.getFlightbyID(id).getDestination()%>
            <%=airline.getFlightbyID(id).getDepartTime()%> 
            <%=airline.getFlightbyID(id).getReturnTime()%>
            <%=airline.getFlightbyID(id).getPrice()%> 
            <%=airline.getFlightbyID(id).getType()%> 
            <%=airline.getFlightbyID(id).getSeat()%>
            <%= user.getCustomerid() %>

        </p>
        <% } %>
        <%= booking %>
    </body>
</html>
