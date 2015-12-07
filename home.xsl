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
			<div class="grid grid-pad">
			<div class="col-1-1">
				<div class="content">
				
				<h2>Title: <xsl:value-of select="title"/></h2>
				<p>Developer: <xsl:value-of select="developer"/></p>
				<p>Platform: <xsl:value-of select="release_details/platform"/></p>
				<button type="button" onclick="gamesMoreData()">More data</button>
				<div id="more">
				</div>
				
				</div>
			</div>
			</div>
			</xsl:for-each>
			
			</body>
					
		</html>
	</xsl:template>
	
	
</xsl:transform>