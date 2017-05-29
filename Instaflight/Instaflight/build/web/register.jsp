<%-- 
    Document   : register
    Created on : 23/05/2017, 12:35:33 PM
    Author     : jiaju
--%>

<%@page import="java.util.Random"%>
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
            String customerid = request.getParameter("customerid");

            String filePath = application.getRealPath("WEB-INF/users.xml");

            Random rand = new Random();
            int n = rand.nextInt(); // generates a random integer for a unique customer id
        %>

        <jsp:useBean id="userApp" class="uts.wsd.userApplication" scope="application">
            <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%Users users = userApp.getUsers();%>
    </head>
    <body>
        <div id="page">
            <div id="header">
                <h1>Register</h1>
            </div>
            <%  if (name == null) { %>
            <%  session.setAttribute("Referer", request.getHeader("Referer"));%> <%-- get URL of previous page --%>
            <div id="navigation">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="register.jsp"class="currentpage">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>	
            </div>
            <div id="content">
            <form action="register.jsp" method="POST">
                <table>
                    <tr><td>Email</td><td><input type="text" name="email" size="25"></td></tr>
                    <tr><td>Full Name</td><td><input type="text" name="name" size="25"></td></tr>
                    <tr><td>Password</td><td><input type="password" name="password" size="25"></td></tr>
                    <tr><td>Date of Birth</td><td><input type="date" name="dob"</td></tr>
                    <tr><td><input type="hidden" name="customerid" value="<%= n%>"></td></tr>
                </table>
                <input type="submit" value="Register">          
            </form>
            </div>
            <%  } else if (users.checkEmail(email) == 1) {%>  <%-- check for duplicate email in XML --%>
            <div id="navigation">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="register.jsp"class="currentpage">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>	
            </div>
            <div id="content">
            <form action="register.jsp" method="POST">
                <table>
                    <tr><td>Email</td><td><input type="text" name="email" value=""></td><td>Email: <%=email%> is already registered.</td></tr> <%-- present error message --%>
                    <tr><td>Full Name</td><td><input type="text" name="name" value="<%= name%>"></td></tr>
                    <tr><td>Password</td><td><input type="password" name="password"></td></tr>
                    <tr><td>Date of Birth</td><td><input type="date" name="dob" value="<%= dob %>"></td></tr>
                    <tr><td><input type="hidden" name="customerid" value="<%= n%>"></td></tr>
                </table>
                <input type="submit" value="Register">          
            </form>
            </div>
            <% } else {
                User user = new User(email, name, password, dob, customerid);
                session.setAttribute("user", user);
                users.addUser(user);
                users.login(email, password); 
                userApp.updateXML(users, filePath); // login the newly regsitered user and update XML
            %>
            <p>Registration successful. <a href="<%= session.getAttribute("Referer")%>">Continue browsing.</a> <%-- return user to their previous page --%>
                <%}%>
                </body>
                </html>
