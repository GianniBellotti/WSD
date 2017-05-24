@@ -1,61 +0,0 @@
-<?xml version="1.0" encoding="UTF-8"?>
-
-<!--
-    Document   : page.xsl
-    Created on : 24 May 2017, 3:16 PM
-    Author     : jiaju
-    Description:
        Purpose of transformation follows.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <xsl:template match="page">
            <html>
                <head>
                    <title>
                        <xsl:value-of select="@title"/>
                    </title>
                </head>
                <body>
                    <h1>
                        <xsl:value-of select="title"/>
                    </h1>
                    <xsl:apply-templates/>
                    
                    <xsl:template match="booklist">
                        <table>
                            <thead>
                                <tr>
                                    <th>Book tittle</th>
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
                                <xsl:value-of select="@price"/>
                            </td>
                        </tr>
                    </xsl:template>
                </body>
            </html>
                
        </xsl:template>
    </xsl:template>
</xsl:stylesheet>