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
			<xsl:for-each select="catalog/game">
			
				
				<p>Genre: <xsl:value-of select="genre"/></p>
				<p>Multiplayer: <xsl:value-of select="multiplayer"/></p>
				<p>Publisher: <xsl:value-of select="publisher"/></p>
				<p>Year: <xsl:value-of select="release_details/year"/></p>
				<p>Age: <xsl:value-of select="release_details/age_rating"/></p>
				<p>Info: <xsl:value-of select="information"/></p>
				
				
				
				
			</xsl:for-each>
			
			</body>
					
		</html>
	</xsl:template>
	
	
</xsl:transform>