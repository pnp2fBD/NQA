<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="sortKey" select="'scenario'"/>
	<xsl:param name="sortOrder" select="'ascending'"/>
	<xsl:param name="filterText" select="''"/>
	<xsl:param name="sortKey1" select="'status'"/>
	<xsl:param name="sortOrder1" select="'ascending'"/>
	<xsl:param name="filterText1" select="''"/>
	<xsl:param name="sortKey2" select="'Suite'"/>
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
		<center>
			<xsl:apply-templates select="suiteResults"/>
		</center>
	</xsl:template>
	<xsl:template match="suiteResults">
		<xsl:call-template name="Doc"/>
	</xsl:template>
	<xsl:template name="Doc">
		<!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
		<table border="0" cellpadding="2" cellspacing="1" width="60%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">
					<table border="0" cellpadding="3" cellspacing="0" width="100%">
						<tr class="tablehl">
							<xsl:variable name="totalDurationSeconds" select="sum(//suiteResults/tests/item/@runDurationSeconds)"/>
							<xsl:variable name="secondsAsDecimalOfMinute" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60),&quot;.&quot;))"/>
							<xsl:variable name="seconds" select="$secondsAsDecimalOfMinute * 60"/>
							<xsl:variable name="minutesAsDecomalOfHour" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60),&quot;.&quot;))"/>
							<xsl:variable name="minutes" select="$minutesAsDecomalOfHour * 60"/>
							<xsl:variable name="hoursAsDecimalOfDay" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60 div 24),&quot;.&quot;))"/>
							<xsl:variable name="days" select="$hoursAsDecimalOfDay * 24"/>
							<xsl:variable name="hours" select="substring-before(string($totalDurationSeconds div 60 div 60),&quot;.&quot;)"/>
							<xsl:variable name="filteredTests" select="count(//suiteResults/tests/item[contains(@*[name(.)=$sortKey],$filterText)and contains(@*[name(.)=$sortKey1],$filterText1)and contains(@*[name(.)=$sortKey2],$filterText2)and contains(@*[name(.)=$sortKey3],$filterText3) and contains(@*[name(.)=$sortKey4],$filterText4) and @suite[.!=''] and @scenario[.!='']])"/>
							<td>Total Tests - <xsl:value-of select="$filteredTests"/>
								<td><span Class="Pass">Passed</span> - <xsl:value-of select="count(//suiteResults/tests/item[contains(@*[name(.)=$sortKey],$filterText)and contains(@*[name(.)=$sortKey1],'Pass')and contains(@*[name(.)=$sortKey2],$filterText2)and contains(@*[name(.)=$sortKey3],$filterText3) and contains(@*[name(.)=$sortKey4],$filterText4) and @suite[.!=''] and @scenario[.!='']])"/></td>
								<td><span Class="Fail">Failed</span> - <xsl:value-of select="count(//suiteResults/tests/item[contains(@*[name(.)=$sortKey],$filterText)and contains(@*[name(.)=$sortKey1],'Fail')and contains(@*[name(.)=$sortKey2],$filterText2)and contains(@*[name(.)=$sortKey3],$filterText3) and contains(@*[name(.)=$sortKey4],$filterText4) and @suite[.!=''] and @scenario[.!='']])"/></td>
							</td>
							<td><b>Run Duration - <xsl:value-of select="floor($hours)"/> Hrs <xsl:value-of select="floor($minutes)"/> Mins <xsl:value-of select="floor($seconds)"/> Secs</b></td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
