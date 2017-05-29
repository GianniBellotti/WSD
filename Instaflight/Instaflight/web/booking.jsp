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
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Booking</title>
    </head>
    <body>
        <%
            session.setAttribute("Referer", request.getHeader("Referer")); //store the URL from previous page in the session
        %>
       
        <% String filePath = application.getRealPath("WEB-INF/bookings.xml");%>
        <jsp:useBean id="bookingApp" class="uts.wsd.bookingApplication" scope="application">
            <jsp:setProperty name="bookingApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            Bookings bookings = bookingApp.getBookings(); // get the bookings list           
            User user = (User) session.getAttribute("user");
            String custID = user.getCustomerid();
            int customerID = Integer.valueOf(custID);
            Booking booking = bookingApp.getBookingByID(customerID); // get the booking matching the currently logged in customer
                    
            if(booking != null) {
        %>
        
        <h1>Booking</h1>
        <p>Name: <%= booking.getName() %></p>
        <p>Email: <%= booking.getEmail() %></p>
        <p>CustomerID: <%= booking.getCustomerID() %></p>
        <p>FlightID: <%= booking.getFlightID() %></p>
        <button onClick="window.location.href='/Instaflight/cancelBooking.jsp?custID=<%=booking.getCustomerID()%>'">Cancel Booking</button>
        <%
            } else {
            String idStr = request.getParameter("id");
            int id = Integer.valueOf(idStr);

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
            <%=airline.getFlightbyID(id).getReturnTime()%> <%-- List flight details if no booking exists --%>
            <%=airline.getFlightbyID(id).getPrice()%> 
            <%=airline.getFlightbyID(id).getType()%> 
            <%=airline.getFlightbyID(id).getSeat()%>
            <%= user.getCustomerid() %>
            
            <%
                
                %>
                <a href="BookFlightAction.jsp?id=<%=Integer.toString(id)%>">Book Now</a>
                
        </p>
        <% } %>
    </body>
</html>
