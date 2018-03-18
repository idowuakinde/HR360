<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<xsl:variable name="hostWebsite" select="rss/channel/link"></xsl:variable>
		<xsl:choose>
			<xsl:when test="contains($hostWebsite,&quot;http://www.cnn.com/&quot;)">
				<ul>
					<xsl:for-each select="rss/channel/item">
						<xsl:if test="position() &lt; 25">
							<xsl:choose>
								<xsl:when test="title = &quot;Mambo License Guidelines&quot;">
								</xsl:when>
								<xsl:otherwise>
									<li>
										<a target="blank">
											<xsl:attribute name="href">
												<xsl:value-of select="link"/>
											</xsl:attribute>
											<!--<xsl:value-of select="concat(substring(title,1,40),&quot; ...&quot;)"/>-->
											<xsl:value-of select="title"/>
										</a>
									</li>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:if>
					</xsl:for-each>
				</ul>
			</xsl:when>
			<xsl:otherwise>
				<ul>
					<xsl:for-each select="rss/channel/item">
						<xsl:if test="position() &lt; 4">
							<xsl:choose>
								<xsl:when test="title = &quot;Mambo License Guidelines&quot;">
								</xsl:when>
								<xsl:otherwise>
									<li>
										<a target="blank">
											<xsl:attribute name="href">
												<xsl:value-of select="link"/>
											</xsl:attribute>
											<!--<xsl:value-of select="concat(substring(title,1,40),&quot; ...&quot;)"/>-->
											<xsl:value-of select="title"/>
										</a>
									</li>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:if>
					</xsl:for-each>
				</ul>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet> 
