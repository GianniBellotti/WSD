<%-- 
    Document   : register
    Created on : 23/05/2017, 12:35:33 PM
    Author     : jiaju
--%>

<%@page import="uts.wsd.User"%>
<%@page import="uts.wsd.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Register</title>
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");

            String filePath = application.getRealPath("WEB-INF/users.xml");
        %>

        <jsp:useBean id="userApp" class="uts.wsd.userApplication" scope="application">
            <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%Users users = userApp.getUsers();%>
    </head>
    <body>
        <%  if (name == null) { %>
        <%  session.setAttribute("Referer", request.getHeader("Referer")); %> 
        <h1>Register</h1>
        <form action="register.jsp" method="POST">
            <table>
                <tr><td>Email</td><td><input type="text" name="email" size="25"></td></tr>
                <tr><td>Full Name</td><td><input type="text" name="name" size="25"></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" size="25"></td></tr>
                <tr><td>Date of Birth</td><td><input type="date" name="dob"</td></tr>
            </table>
            <input type="submit" value="Register">          
        </form>

        <%  } else if(users.checkEmail(email) == 1) { %>
        <h1>Register</h1>
        <form action="register.jsp" method="POST">
            <table>
                <tr><td>Email</td><td><input type="text" name="email" value=""></td><td>Email: <%=email%> is already registered.</td></tr>
                <tr><td>Full Name</td><td><input type="text" name="name" value="<%= name %>"></td></tr>
                <tr><td>Password</td><td><input type="password" name="password"></td></tr>
                <tr><td>Date of Birth</td><td><input type="date" name="dob" value="<%= dob %>"></td></tr>
            </table>
            <input type="submit" value="Register">          
        </form>
        <% } else { 
            User user = new User(email, name, password, dob);
            session.setAttribute("user", user);
            users.addUser(user);
            users.login(email, password);
            userApp.updateXML(users, filePath);
        %>
            <p>Registration successful. <a href="<%= session.getAttribute("Referer")%>">Continue browsing.</a>
        <%}%>
    </body>
</html>
