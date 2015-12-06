<?xml version="1.0" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"	version="1.0">
	<xsl:template match="*">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="text()">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="/">
		<html>
			<head>
				<title>Gamespot</title>
			</head>
			<body>
			
			</body>
			
				<h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
      <th>platform</th>
      <th>title</th>
      <th>multiplayer</th>      
    </tr>
    <xsl:for-each select="catalog/game">
    
      <tr>
        <td><xsl:value-of select="release_details/platform"/></td>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="multiplayer"/></td>        
	   </tr>
    
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
				
			
			
		