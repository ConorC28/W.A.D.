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
				<xsl:apply-templates select=""/>
				
				<!--2. All out of print titles-->
				<h2>All the Developers:</h2>
				<xsl:apply-templates select=""/>
				
				<!--3. Fantasy book id numbers and Computer books costing more than 40-->
				<h2>All the Prodecers:</h2>
				<xsl:apply-templates select=""/>
				<!--
				4. Published after 2001
				<h2>Books published after 2001:</h2>
				<xsl:apply-templates select="/catalog/book/publish/publish_date[text()>'2001']"/>
				
				5. Books costing more than 30 
				<h2>Books starting with the letter C:</h2>
				<xsl:apply-templates select="/catalog/book/price[text()>'30']"/>
				-->
			</body>					
		</html>
	</xsl:template>
	
	<xsl:template match="title">
		<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="platform">
		<xsl:value-of select="../title"/>
	</xsl:template>
	
</xsl:transform>