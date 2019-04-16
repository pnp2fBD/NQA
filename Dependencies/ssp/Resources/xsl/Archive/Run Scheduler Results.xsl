<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="sortKey" select="''"/>
	<xsl:param name="sortOrder" select="'ascending'"/>
	<xsl:param name="filterText" select="''"/>
	<xsl:param name="sortKey1" select="''"/>
	<xsl:param name="sortOrder1" select="'ascending'"/>
	<xsl:param name="filterText1" select="''"/>
	<xsl:param name="sortKey2" select="''"/>
	<xsl:param name="sortOrder2" select="'ascending'"/>
	<xsl:param name="filterText2" select="''"/>
	<xsl:param name="sortKey3" select="''"/>
	<xsl:param name="sortOrder3" select="'ascending'"/>
	<xsl:param name="filterText3" select="''"/>
	<xsl:param name="sortKey4" select="''"/>
	<xsl:param name="sortOrder4" select="'ascending'"/>
	<xsl:param name="filterText4" select="''"/>
	<xsl:param name="rowIndex" select="'0'"/>
	<xsl:template match="/">
		<xsl:apply-templates select="scenarios"/>
	</xsl:template>
	<xsl:template name="ResultsSummary">
		<xsl:for-each select="//scenarios/scenario">
			<xsl:sort select="@number" data-type="text" order="ascending"/>
			<xsl:sort select="*[name(.)=$sortKey]|@*[name(.)=$sortKey]" order="{$sortOrder}"/>
			<xsl:sort select="*[name(.)=$sortKey3]|@*[name(.)=$sortKey3]" order="{$sortOrder3}"/>
				<xsl:if test="contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText)">
					<xsl:if test="contains(*[name(.)=$sortKey1]|@*[name(.)=$sortKey1],$filterText1)">
						<xsl:if test="contains(*[name(.)=$sortKey2]|@*[name(.)=$sortKey2],$filterText2)">
							<xsl:if test="contains(*[name(.)=$sortKey3]|@*[name(.)=$sortKey3],$filterText3)">
								<xsl:if test="contains(*[name(.)=$sortKey4]|@*[name(.)=$sortKey4],$filterText4)">
								<div rowIndex="{position()}">
									<table class="rowover" border="0" cellpadding="1" cellspacing="0" width="100%" striped="true" selectable="true">
										<tr>
											<td width="55%" valign="middle" align="left" height="20"><span class="text_small"><input type="checkbox" id="check{position()}" checked="True"></input><b><xsl:value-of select="number"/></b></span></td>
											<td width="10%" valign="middle" align="left" height="20">
												<xsl:element name="span"><xsl:attribute name="class"><xsl:value-of select="status"/></xsl:attribute>
													<xsl:value-of select="status"/>
												</xsl:element>
											</td>
											<td width="5%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="suite"/></b></span></td>
											<xsl:choose>
  												<xsl:when test="runDurationSeconds[.!='']">
  													<xsl:variable name="totalDurationSeconds" select="runDurationSeconds"/>
													<xsl:variable name="secondsAsDecimalOfMinute" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60),&quot;.&quot;))"/>
													<xsl:variable name="seconds" select="$secondsAsDecimalOfMinute * 60"/>
													<xsl:variable name="minutesAsDecomalOfHour" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60),&quot;.&quot;))"/>
													<xsl:variable name="minutes" select="$minutesAsDecomalOfHour * 60"/>
													<xsl:variable name="hoursAsDecimalOfDay" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60 div 24),&quot;.&quot;))"/>
													<xsl:variable name="days" select="$hoursAsDecimalOfDay * 24"/>
													<xsl:variable name="hours" select="substring-before(string($totalDurationSeconds div 60 div 60),&quot;.&quot;)"/>
													<td width="10%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="floor($hours)"/>:<xsl:value-of select="floor($minutes)"/>:<xsl:value-of select="floor($seconds)"/></b></span></td>
  											</xsl:when>
											<xsl:otherwise>
    													<td width="10%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="0"/></b></span></td>
  												</xsl:otherwise>
											</xsl:choose>
	
											
											<td width="10%" valign="middle" align="left" height="20"><span class="text_small" contentEditable="true"><xsl:value-of select="host"/></span></td>
										</tr>
									</table>
									<div id="{position()}"></div>
									<xsl:element name="div"><xsl:attribute name="id"><xsl:value-of select="$rowIndex"/></xsl:attribute></xsl:element>
								</div>
								</xsl:if>
							</xsl:if>
						</xsl:if>
					</xsl:if>
				</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="scenarios">
		<xsl:call-template name="Doc"/>
	</xsl:template>
	<xsl:template name="Doc">
		<xsl:call-template name="ResultsSummary"/>
		<xsl:call-template name="GreenLine"/>
		<xsl:apply-templates select="*[@rID]"/>
	</xsl:template>
	<!-- //////////////////////////// GreenLine ///////////////////////////////// -->
	<xsl:template name="GreenLine">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<!-- <td class="brake"> </td> -->
				<td height="10px"></td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
