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

    <%} else if (user.getName() =="Admin") {%>
    <admin <%=user.getName()%>/>
    <%} else {%>
    <customer name="<%=user.getName()%>"/>
    <%}%>
    <%String filePath = application.getRealPath("WEB-INF/flights.xml");%>
    <jsp:useBean id="airlineDao" class="uts.wsd.AirlineJaxbDAO" scope="application">
        <jsp:setProperty name="airlineDao" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>
    <list>
    <%Airline airline = airlineDao.getAirline();
        int i = 0;
        for (Flight flight : airline.getFlights()) {
    %>
    <flight id="<%=airline.getFlightbyID(i).getID()%>" origin="<%=airline.getFlightbyID(i).getOrigin()%>" destination="<%=airline.getFlightbyID(i).getDestination()%>" 
            departTime="<%=airline.getFlightbyID(i).getDepartTime()%>" 
            returnTime="<%=airline.getFlightbyID(i).getReturnTime()%>" 
            price="<%=airline.getFlightbyID(i).getPrice()%>" 
            type="<%=airline.getFlightbyID(i).getType()%>" 
            seat="<%=airline.getFlightbyID(i).getSeat()%>"
            loginCheck="<%=loginCheck%>"/>
    <%i++;
            }%>
    </list>
</page>
