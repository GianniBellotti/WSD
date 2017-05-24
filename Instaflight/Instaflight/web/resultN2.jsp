<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="pageStyling.xsl"?>
<%@page import="uts.wsd.Flight"%>
<%@page import="uts.wsd.Airline"%>
<%@page import="uts.wsd.User"%><%@page contentType="application/xml"%>
<page title="Result">
    <%User user = (User)session.getAttribute("user");%>
        <%
            if (user == null){
        %>
        <visitor/>
        <%}else if(user.getName().equals("Admin")){%>
        <admin name="<%=user.getName()%>"/>
        <%}else{%>
        <customer name="<%=user.getName()%>"/>
        <%}%>
        <%String filePath = application.getRealPath("WEB-INF/flights.xml");%>
        <jsp:useBean id="airlineDao" class="uts.wsd.AirlineJaxbDAO" scope="application">
            <jsp:setProperty name="airlineDao" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <result>
            <%Airline airline = airlineDao.getAirline();
            int i = 0;
        for (Flight flight : airline.getFlights()){
            %>
        <flight id="<%=airline.getFlightbyID(i).getID()%>" 
                origin="<%=airline.getFlightbyID(i).getOrigin()%>" 
                destination="<%=airline.getFlightbyID(i).getDestination()%>" 
                departTime="<%=airline.getFlightbyID(i).getDepartTime()%>" 
                returnDate="<%=airline.getFlightbyID(i).getReturnTime()%>" 
                price="500" type="<%=airline.getFlightbyID(i).getPrice()%>" 
                seat="<%=airline.getFlightbyID(i).getSeat()%>"/>
        <%i++;}%>
        </result>
</page>
