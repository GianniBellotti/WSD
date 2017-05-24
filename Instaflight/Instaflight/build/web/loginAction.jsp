<%-- 
    Document   : loginAction
    Created on : 23/05/2017, 11:56:54 AM
    Author     : jiaju
--%>

<%@page import="uts.wsd.User"%>
<%@page import="uts.wsd.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%String email = request.getParameter("email");
        String password = request.getParameter("password");
    %>
    <%String filePath = application.getRealPath("WEB-INF/users.xml");%>
    <jsp:useBean id="userApp" class="uts.wsd.userApplication" scope="application">
        <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
    </jsp:useBean>
    <body>
        <% Users users = userApp.getUsers();
            User user = users.login(email, password);
            if (user != null)
            {
                session.setAttribute("user", user);
            
        %>
        <p>Login Successful. Click <a href="index.jsp">here</a> to return to the main page.</p>
        <%}else{%>
        <p>Password incorrect. Click <a href="login.jsp">here</a> to try again.</p>
        <%}%>
    </body>
</html>
