<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="camaro">

<html>
<head>
<title>Chevrolet Camaro</title>
</head>
<body>


<xsl:for-each select="Camaro">
<div class="camaro" style="float: left; width: 460px;">
  <h3>Camaro <xsl:value-of select="@tipo"/></h3>
  <div style="width: 70px;">
     <xsl:element name="img">
       <xsl:attribute name="src">
         <xsl:value-of select="imagen/@ruta"/>
       </xsl:attribute>
       <xsl:attribute name="height">
         280
       </xsl:attribute>
     </xsl:element>
</div>
  <ul style="float: left;">
    <li><xsl:value-of select="motor"/></li>
    <li><xsl:value-of select="cilindrada"/></li>
    <li><xsl:value-of select="potencia"/></li>
    <li><xsl:value-of select="precio"/></li>
  </ul>

</div>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
