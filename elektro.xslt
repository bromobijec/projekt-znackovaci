<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>Seznam notebooků seřazených od nejlevnějšího</h2>
  <table border="1">
    <tr bgcolor="#4702B2">
      <th style="text-align:center; color: white">Znacka</th>
      <th style="text-align:center; color: white">Model</th>
      <th style="text-align:center; color: white">Cena</th>
      <th style="text-align:center; color: white">Numericka klavesnice</th>
    </tr>
    <xsl:for-each select="obchod/zbozi/elektronika/pocitace-a-notebooky/notebooky/notebook">
      <xsl:sort select="cena" order="ascending"/>
      <tr>
        <td><xsl:value-of select="znacka"/></td>
        <td><xsl:value-of select="model"/></td>
        <td><xsl:value-of select="cena"/></td>
        <td><xsl:value-of select="numericka-klavesnice"/></td>
      </tr>
    </xsl:for-each>
  </table>
  <h2>Zvýrazněné monitory s HDMI</h2>
  <table border="1">
    <tr bgcolor="#4702B2">
      <th style="text-align:center; color: white">Znacka</th>
      <th style="text-align:center; color: white">Model</th>
      <th style="text-align:center; color: white">Cena</th>
      <th style="text-align:center; color: white">HDMI</th>
    </tr>
    <xsl:for-each select="obchod/zbozi/elektronika/pocitace-a-notebooky/monitory/monitor">
      <tr>
      <xsl:choose>
        <xsl:when test="HDMI = 'Ano'">
            <td bgcolor="#1AFA04">
            <xsl:value-of select="znacka"/></td>
            <td><xsl:value-of select="model"/></td>
            <td><xsl:value-of select="cena"/></td>
            <td><xsl:value-of select="HDMI"/></td>
        </xsl:when>
        <xsl:otherwise>
            <td><xsl:value-of select="znacka"/></td>
            <td><xsl:value-of select="model"/></td>
            <td><xsl:value-of select="cena"/></td>
            <td><xsl:value-of select="HDMI"/></td>
        </xsl:otherwise>
      </xsl:choose>
      </tr>
    </xsl:for-each>
  </table>
  <h2>Počítače pod 15000 Kč</h2>
  <table border="1">
    <tr bgcolor="#4702B2">
      <th style="text-align:center; color: white">Zamereni</th>
      <th style="text-align:center; color: white">Operacni system</th>
      <th style="text-align:center; color: white">Cena</th>
    </tr>
    <xsl:for-each select="obchod/zbozi/elektronika/herni/PC/sestava">
      <tr>
        <xsl:if test="cena &gt; 15000">
          <td><xsl:value-of select="@zamereni"/></td>
          <td><xsl:value-of select="operacni-system"/></td>
          <td><xsl:value-of select="cena"/></td>
        </xsl:if>
      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
