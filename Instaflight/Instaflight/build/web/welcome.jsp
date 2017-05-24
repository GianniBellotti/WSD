<%-- 
    Document   : welcome
    Created on : 23/05/2017, 12:40:51 PM
    Author     : jiaju
--%>
<%@page import="uts.wsd.User"%>
<%@page import="uts.wsd.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
        %>

        <%String filePath = application.getRealPath("WEB-INF/users.xml");//"C:/Users/jiaju/OneDrive/Documents/NetBeansProjects/Instaflight/web/WEB-INF/users.xml"%>
        <jsp:useBean id="userApp" class="uts.wsd.userApplication" scope="application">
        <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%Users users = userApp.getUsers();%>
        <%if (users.checkEmail(email) == 1) {%>
        <p>Email: <%=email%> already registered with us, please try again </p>
        <p>Click <a href="register.jsp">here</a> to go back.</p>
        <%} else {%>
        <p>Welcome, <%=name%>!</p>
        <p>Your Email is <%=email%>.</p>
        <p>Your password is <%=password%>.</p>
        <p>Your Date of birth is <%=dob%></p>
        <%
            User user = new User(email, name, password, dob);
            session.setAttribute("user", user);
            users.addUser(user);
            userApp.updateXML(users, filePath);
        %>
        <p>Click <a href="index.jsp">here</a> to proceed to the main page.</p>

        <%}%>
    </body>
</html>
