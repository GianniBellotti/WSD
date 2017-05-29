<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="pageStyling.xsl"?>
<%@page import="uts.wsd.Flight"%>
<%@page import="uts.wsd.Airline"%>
<%@page import="uts.wsd.User"%><%@page contentType="application/xml"%>
<page title="Result">

    <%User user = (User) session.getAttribute("user");
        if (user == null) {
    %>

    <visitor/>

    <%} else if (user.getName().equals("Admin")) {%>
    <admin name="<%=user.getName()%>"/>
    <%} else {%>
    <customer name="<%=user.getName()%>"/>
    <%}%>
    <%String filePath = application.getRealPath("WEB-INF/flights.xml");%>
    <jsp:useBean id="airlineDao" class="uts.wsd.AirlineJaxbDAO" scope="application">
        <jsp:setProperty name="airlineDao" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>
    <list>
    <%
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String type = request.getParameter("select");
        String departDate = request.getParameter("departDate");
        String returnDate = request.getParameter("returnDate");

        Airline airline = new Airline(); 
         if(from != "" && to != "" && type.equals(""))
        {
            airline.setFlights(airlineDao.getByCity(from, to));
        }else if(!type.equals("")){
            airline.setFlights(airlineDao.getByType(type));
        }
        
        if(from.equals("") && to.equals("") && type.equals(""))
        {
            airline = airlineDao.getAirline();
        }
        
        /*if(!departDate.equals("") && !returnDate.equals("")){
            airline.setFlights(airlineDao.getByDate(departDate, returnDate));
        }*/
        int i = 0;
        for (Flight flight : airline.getFlights()) {
            flight = airline.getFlights().get(i);
    %>
    <flight id="<%=flight.getID()%>" origin="<%=flight.getOrigin()%>" destination="<%=flight.getDestination()%>" 
            departTime="<%=flight.getDepartTime()%>" 
            returnTime="<%=flight.getReturnTime()%>" 
            price="<%=flight.getPrice()%>" 
            type="<%=flight.getType()%>" 
            seat="<%=flight.getSeat()%>"
            />
    <%i++;
        if (flight.getSeat() == 0) {
    %><unavailable/><%
        } else {
    %><available id="<%=flight.getID()%>"/><%
                 }
             }
    %>
    </list>
</page>
