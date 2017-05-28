<?xml version="1.0" encoding="UTF-8"?>
<!--
-    Document   : page.xsl
-    Created on : 24 May 2017, 3:16 PM
-    Author     : jiaju
-    Description:
        Purpose of transformation follows.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<<<<<<< HEAD
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
        <xsl:template match="visitor">
            <table>
            <tr><td><a href="login.jsp" >Login</a></td><td><a href="register.jsp">Register</a></td></tr>
            </table>
        </xsl:template>
        <xsl:template match="admin">
            <table>
            <tr><td><i>Logged in as &lt;<xsl:value-of select="@name"/>&gt;</i></td>
                <td><a href="logout.jsp">Logout</a></td><td><a href="admin.jsp">Manage Flight</a></td></tr>
            </table>
        </xsl:template>
        <xsl:template match="customer">
            <table>
            <tr><td><i>Logged in as &lt;<xsl:value-of select="@name"/>&gt;</i></td>
            <td><a href="logout.jsp">Logout</a></td></tr>
            </table>
        </xsl:template>
        <xsl:template match="list">
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
            <tr align="center">
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
                    <xsl:value-of select="@departTime"/>
                </td>
                <td>
                    <xsl:value-of select="@returnTime"/>
                </td>
                <td>
                    $<xsl:value-of select="@price"/>
                </td>
                <td>
                    <xsl:value-of select="@type"/>
                </td>
=======
    <xsl:template match="page">
        <html>
            <head>
                <link rel="stylesheet" href="style.css" type="text/css"/>
                <title>
                    <xsl:value-of select="@title"/>
                </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="@title"/>
                </h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="visitor">
        <div id="navigation">
            <ul>
                <li>
                    <a href="index.jsp">Home</a>
                </li>
                <li>
                    <a href="register.jsp">Register</a>
                </li>
                <li>
                    <a href="login.jsp">Login</a>
                </li>
            </ul>	
        </div>
    </xsl:template>
    <xsl:template match="admin">
        <div id="navigation">

            <ul>
                <li>
                    <a href="index.jsp">Home</a>
                </li>
                <li>
                    <a href="admin.jsp" class="currentpage">Admin</a>
                </li>
                <li>
                    <button onclick="window.location.href = '/Instaflight/logout.jsp'">Logout</button>
                </li>
            </ul>
            <p>
                <i>Logged in as &lt;<xsl:value-of select="@name"/>&gt;</i>
            </p>	
        </div>
    </xsl:template>
    <xsl:template match="customer">
        <div id="navigation">

            <ul>
                <li>
                    <a href="index.jsp">Home</a>
                </li>
                <li>
                    <button onclick="window.location.href = '/Instaflight/logout.jsp'">Logout</button>
                </li>
            </ul>
            <p>
                <i>Logged in as &lt;<xsl:value-of select="@name"/>&gt;</i>
            </p>	
        </div>
    </xsl:template>
    <xsl:template match="list">
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
        <tr align="center">
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
                <xsl:value-of select="@departTime"/>
            </td>
            <td>
                <xsl:value-of select="@returnTime"/>
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
                <a href="booking.jsp?id={@id}">View</a>
            </td>
        </tr>
    </xsl:template>
    <!--
    <xsl:template match="bookdetail">
        <table>
            <tr>
>>>>>>> bfeab3fc8dfd1351527f34a4cabe4d7964c5a057
                <td>
                    <img src="images/{@id}.png"/>
                </td>
                <td>
                    blehlbhelbhee,
                </td>
            </tr>
        </table>
    </xsl:template>-->
</xsl:stylesheet>
