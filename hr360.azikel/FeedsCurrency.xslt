<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text" />
	<xsl:template match="/s">
		<xsl:call-template name="replace-string">
			<xsl:with-param name="str" select="." />
			<xsl:with-param name="delim" select="'__OPT__'"/>
			<xsl:with-param name="newdelim" select="':'" />
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="replace-string">
		<xsl:param name="str" />
		<xsl:param name="delim" />
		<xsl:param name="newdelim" />
		<xsl:if test="string-length(substring-before($str,$delim)) = 0">
			<xsl:value-of select="$str" />
		</xsl:if>
		<xsl:if test="string-length(substring-before($str,$delim)) > 0">
			<xsl:value-of select="substring-before($str,$delim)" />
			<xsl:value-of select="$newdelim" />
		</xsl:if>
		<xsl:if test="string-length(substring-after($str,$delim)) > 0">
			<xsl:call-template name="replace-string">
				<xsl:with-param name="str" select="substring-after($str,$delim)" />
				<xsl:with-param name="delim" select="$delim" />
				<xsl:with-param name="newdelim" select="$newdelim" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>




<!--<?xml version="1.0"?>
<s>
	Importer__OPT__Trading Company__OPT__Service
	Provider
</s>-->