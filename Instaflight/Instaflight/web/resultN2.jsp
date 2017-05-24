<%@page import="uts.wsd.User"%><%@page contentType="application/xml"%><?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="pageStyling.xsl"?>
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
        <%String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="airlineDao" class="uts.wsd.AirlineJaxbDAO" scope="application">
            <jsp:setProperty name="airlineDao" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <result>
            <flight id="0" origin="Sydney" destination="Perth" departTime="2017-05-27" returnDate="2017-06-28" price="500" type="economy" seat="100"/>
            <flight id="1" origin="Sydney" destination="Perth" departTime="2017-05-27" returnDate="2017-06-28" price="500" type="economy" seat="100"/>
            <flight id="2" origin="Sydney" destination="Perth" departTime="2017-05-27" returnDate="2017-06-28" price="500" type="economy" seat="100"/>
        </result>
</page>
