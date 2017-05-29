<?xml version="1.0" encoding="UTF-8"?>
<!--
-    Document   : pageStyling.xsl
-    Created on : 24 May 2017, 3:16 PM
-    Author     : jiaju
-    Description:
        To transform resultN2.jsp into HTML 
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
        <!--
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
        </xsl:template>-->
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
            </tr>
             </xsl:template>
=======
=======
>>>>>>> d684cd4fe1c3416d5927f2a19fc2829f0654cb42
=======
>>>>>>> d684cd4fe1c3416d5927f2a19fc2829f0654cb42
=======
>>>>>>> d684cd4fe1c3416d5927f2a19fc2829f0654cb42
    <!--<xsl:template match="page">
   <html>
       <head>
           <link rel="stylesheet" href="style.css" type="text/css">
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
   </tr>
    </xsl:template>
    -->
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> d684cd4fe1c3416d5927f2a19fc2829f0654cb42
=======
>>>>>>> d684cd4fe1c3416d5927f2a19fc2829f0654cb42
=======
>>>>>>> d684cd4fe1c3416d5927f2a19fc2829f0654cb42
=======
>>>>>>> d684cd4fe1c3416d5927f2a19fc2829f0654cb42
    <xsl:template match="page">
        <html>
            <head>
                <link rel="stylesheet" href="style.css" type="text/css"/>
                <title>
                    <xsl:value-of select="@title"/>
                </title>
            </head>            
            <body>
                <div id="page">
                    <div id="header">
                        <h1>
                            <xsl:value-of select="@title"/>
                        </h1>
                    </div>
                    <xsl:apply-templates/>
                </div>
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
        <div id="content">
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
        </div>
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
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="unavailable">
        <td>
            Unavailable
        </td>
    </xsl:template>
    <xsl:template match="available">
        <td>
            <a href="booking.jsp?id={@id}">View</a>
        </td>
    </xsl:template>
</xsl:stylesheet>