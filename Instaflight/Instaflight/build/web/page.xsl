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
        <xsl:template match="booklist">
            <table>
                <thead>
                    
                    <tr>
                        <th>Book title</th>
                        <th>Author</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates/>
                </tbody>
            </table>
        </xsl:template>
        
        <xsl:template match="booklink">
            <tr>
                <td>
                    <xsl:value-of select="@title"/>
                </td>
                <td>
                    <xsl:value-of select="@author"/>
                </td>
                <td>
                    <xsl:value-of select="@Price"/>
                </td>
            </tr>
        </xsl:template>
</xsl:stylesheet>