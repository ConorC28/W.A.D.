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
				<!--all the platforms-->
				<h2>All game Titles:</h2>
				<xsl:apply-templates select="/catalog/game/title"/>
				
				<!--2. All out of print titles-->
				<h2>All the Developers:</h2>
				<xsl:apply-templates select="/catalog/game/developer"/>
				
				<!--3. Fantasy book id numbers and Computer books costing more than 40-->
				<h2>All the Platforms:</h2>
				<xsl:apply-templates select="/catalog/game/release_details/platform"/>
			</body>
					
		</html>
	</xsl:template>
	
	<xsl:template match="title">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="developer">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="platform">
		<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:transform>