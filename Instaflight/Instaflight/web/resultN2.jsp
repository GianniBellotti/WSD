<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="pageStyling.xsl"?>
<%@page import="uts.wsd.Flight"%>
<%@page import="uts.wsd.Airline"%>
<%@page import="uts.wsd.User"%><%@page contentType="application/xml"%>
<page title="Result">
    
    <%User user = (User) session.getAttribute("user");
        String loginCheck = "visitor";
    %>
    <%
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
        String type = request.getParameter("type");
        Airline airline = new Airline();
        if(from.equals("") && to.equals(""))
        {
            airline = airlineDao.getAirline();
        }else if (type != "" && from != "" && to != ""){
            airline.setFlights(airlineDao.getByCity(from, to));
            //airline.setFlights(airline.getByType(type));
        }
        else
        {
             airline.setFlights(airlineDao.getByCity(from, to));
        }
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
                loginCheck="<%=loginCheck%>"/>
        <%i++;
            }
    %>
    </list>
</page>
