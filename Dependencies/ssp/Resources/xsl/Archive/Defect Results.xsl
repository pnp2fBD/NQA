<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="sortKey" select="'d_ID'"/>
	<xsl:param name="sortOrder" select="'ascending'"/>
	<xsl:param name="filterText" select="'d_CreatedDate'"/>
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
		<xsl:apply-templates select="defects"/>
	</xsl:template>
	<xsl:template name="Defects">
		<table class="rowover" border="0" cellpadding="3" cellspacing="0" width="100%" striped="true" selectable="true" skipnlast="0" skipnfirst="0">
		<xsl:for-each select="//defects/defect">
			<xsl:sort select="@number" data-type="text" order="ascending"/>
			<xsl:sort select="*[name(.)=$sortKey]|@*[name(.)=$sortKey]" order="{$sortOrder}"/>
			<xsl:sort select="*[name(.)=$sortKey3]|@*[name(.)=$sortKey3]" order="{$sortOrder3}"/>
				<xsl:if test="contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText)">
					<xsl:if test="contains(*[name(.)=$sortKey1]|@*[name(.)=$sortKey1],$filterText1)">
						<xsl:if test="contains(*[name(.)=$sortKey2]|@*[name(.)=$sortKey2],$filterText2)">
							<xsl:if test="contains(*[name(.)=$sortKey3]|@*[name(.)=$sortKey3],$filterText3)">
								<xsl:if test="contains(*[name(.)=$sortKey4]|@*[name(.)=$sortKey4],$filterText4)">
									<xsl:call-template name="allrecords"/>
								</xsl:if>
							</xsl:if>
						</xsl:if>
					</xsl:if>
				</xsl:if>	
		</xsl:for-each>
		</table>
	</xsl:template>
	<xsl:template name="allrecords">
		<xsl:variable name="defectID" select="d_ID"/>
		<tr id="{position()}" ondblClick="javascript:editDefect(this);">
		<!--<xsl:element name="tr">
			<xsl:attribute name="ondblClick">javascript:editDefect(this);</xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select=$defectID/></xsl:attribute>
		</xsl:element>-->
			<td width="2%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="d_ID"/></b></span></td>
			<td width="30%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="d_Description"/></span></td>
			<td width="7%" valign="middle" align="left" height="20">
				<xsl:element name="span">
					<xsl:attribute name="class"><xsl:value-of select="d_Status"/></xsl:attribute>
					<xsl:attribute name="contentEditable">"true"</xsl:attribute>
					<xsl:value-of select="d_Status"/>
				</xsl:element>
			</td>
			<td width="10%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="d_Creator"/></span></td>
			<td width="10%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="d_CreatedDate"/></span></td>
			<td width="10%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="d_Project"/></span></td>
			<td width="10%" valign="middle" align="left" height="20"><span class="text_small" contentEditable="true"><xsl:value-of select="d_AssignedTo"/></span></td>
			<td width="10%" valign="middle" align="left" height="20"><span class="text_small" contentEditable="true"><xsl:value-of select="d_EstimatedFixDate"/></span></td>
			<td width="10%" valign="middle" align="left" height="20"><span class="text_small" contentEditable="true"><xsl:value-of select="d_ActualFixDate"/></span></td>
		</tr>
	</xsl:template>
	<xsl:template match="defects">
		<xsl:call-template name="Doc"/>
	</xsl:template>
	<xsl:template name="Doc">
		<xsl:call-template name="Defects"/>
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
