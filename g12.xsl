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
				
			
				
			<div class="col-1-3">
				<div class="content">
				
					<h2>Title: <xsl:apply-templates select="/catalog/game[12]/title"/></h2>
					<p>Developer:<xsl:apply-templates select="/catalog/game[12]/developer"/></p>
					<p>Platform: <xsl:apply-templates select="/catalog/game[12]/release_details/platform"/></p>
					<button type="button" id="showDatag12" onclick="showg12()">More data</button>
					<button type="button" id="hideDatag12" onclick="hideg12()">Hide data</button>
					<div class="moreg12 hide">
						<p>Genre: <xsl:apply-templates select="/catalog/game[12]/genre"/></p>
						<p>Multiplayer: <xsl:apply-templates select="/catalog/game[12]/multiplayer"/></p>
						<p>Publisher: <xsl:apply-templates select="/catalog/game[12]/publisher"/></p>
						<p>Year: <xsl:apply-templates select="/catalog/game[12]/release_details/year"/></p>
						<p>Age: <xsl:apply-templates select="/catalog/game[12]/release_details/age_rating"/></p>
						<p>Info: <xsl:apply-templates select="/catalog/game[12]/information"/></p>
					</div>
				
				</div>
			</div>
			
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
	
	<xsl:template match="genre">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="multiplayer">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="publisher">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="year">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="age_rating">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="information">
		<xsl:value-of select="."/>
	</xsl:template>
	
	
</xsl:transform>