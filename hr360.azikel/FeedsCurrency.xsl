<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<!--<table width="100%" border="0">-->
			<xsl:for-each select="rss/channel/item">
				<xsl:choose>
					<xsl:when test="contains(link,&quot;USD&quot;)">
						<!--<tr>
							<td width="5%">
							</td>
							<td>-->
								<!--<b>-->
									<a target="blank">
										<xsl:attribute name="href">
											<xsl:value-of select="link"/>
										</xsl:attribute>
										<xsl:value-of select="substring(description,34,27)"/>
									</a>
								<!--</b>-->
							<!--</td>
						</tr>-->
					</xsl:when>
					<xsl:otherwise>
						<!--<tr>
							<td width="5%">
							</td>
							<td>-->
								<!--<b>-->
									<a target="blank">
										<xsl:attribute name="href">
											<xsl:value-of select="link"/>
										</xsl:attribute>
										<xsl:value-of select="substring(description,1,27)"/>
									</a>
								<!--</b>-->
							<!--</td>
						</tr>-->
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		<!--</table>-->
	</xsl:template>
</xsl:stylesheet>
