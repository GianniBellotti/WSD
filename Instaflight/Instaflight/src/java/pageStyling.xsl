<?xml version="1.0" encoding="UTF-8"?>
<!--
-    Document   : page.xsl
-    Created on : 24 May 2017, 3:16 PM
-    Author     : jiaju
-    Description:
        Purpose of transformation follows.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:template match="page">
            <html>
                <head>
                    <title><xsl:value-of select="@title"/></title>
                </head>
                <body>
                    <h1><xsl:value-of select="@title"/></h1>
                    <xsl:apply-templates/>
                </body>
            </html>
        </xsl:template>
        <xsl:template match="navagation">
             <%User user = (User)session.getAttribute("user");%>
        <%
            if (user == null){
        %>
        <table>
            <tr><td><a href="login.jsp" >Login</a></td><td><a href="register.jsp">Register</a></td></tr>
        </table>
        <%}else if(user.getName().equals("Admin")){%>
            <table>
            <tr><td><i>Logged in as &lt;<%=user.getName()%>&gt;</i></td>
                <td><a href="logout.jsp">Logout</a></td><td><a href="admin.jsp">Manage Flight</a></td></tr>
            </table>
        <%}else{%>
        <table>
            <tr><td><i>Logged in as &lt;<%=user.getName()%>&gt;</i></td>
            <td><a href="logout.jsp">Logout</a></td></tr>
        </table>
        <%}%>
        </xsl:template>
        <xsl:template match="result">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Origin</th>
                        <th>Destination</th>
                        <th>Departure Date</th>
                        <th>Return</th>
                        <th>Price</th>
                        <th>Type</th>
                        <th>Availability</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates/>
                </tbody>
            </table>
        </xsl:template>
        <xsl:template match="flight">
            <tr>
                <td>
                    <xsl:value-of select="@id"/>
                </td>
                <td>
                    <xsl:value-of select="@origin"/>
                </td>
                <td>
                    <xsl:value-of select="@destination"/>
                </td>
                <td>
                    <xsl:value-of select="departTime"/>
                </td>
                <td>
                    <xsl:value-of select="returnTime"/>
                </td>
                <td>
                    <xsl:value-of select="@price"/>
                </td>
                <td>
                    <xsl:value-of select="@type"/>
                </td>
                <td>
                    <xsl:value-of select="@seat"/>
                </td>
                <td>
                    <a href="book.jsp?id={@id}">View</a>
                </td>
            </tr>
        </xsl:template>
        <xsl:template match="bookdetail">
            <table>
                <tr>
                    <td>
                        <img src="images/{@id}.png"/>
                    </td>
                    <td>
                        blehlbhelbhee,
                    </td>
                </tr>
            </table>
        </xsl:template>
</xsl:stylesheet>