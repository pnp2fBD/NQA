<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="sortKey" select="'suite'"/>
	<xsl:param name="sortOrder" select="'ascending'"/>
	<xsl:param name="filterText" select="''"/>
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
							<xsl:variable name="totalDurationSeconds" select="sum(//suiteResults/INTEGRATION/tests/item/@runDurationSeconds)"/>
							<xsl:variable name="secondsAsDecimalOfMinute" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60),&quot;.&quot;))"/>
							<xsl:variable name="seconds" select="$secondsAsDecimalOfMinute * 60"/>
							<xsl:variable name="minutesAsDecomalOfHour" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60),&quot;.&quot;))"/>
							<xsl:variable name="minutes" select="$minutesAsDecomalOfHour * 60"/>
							<xsl:variable name="hoursAsDecimalOfDay" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60 div 24),&quot;.&quot;))"/>
							<xsl:variable name="days" select="$hoursAsDecimalOfDay * 24"/>
							<xsl:variable name="hours" select="substring-before(string($totalDurationSeconds div 60 div 60),&quot;.&quot;)"/>
							<xsl:variable name="filteredTests" select="count(//suiteResults/INTEGRATION/tests/item[contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText)])"/>
							<td>Total Tests - <xsl:value-of select="$filteredTests"/>
								<td><span Class="Pass">Passed</span> - <xsl:value-of select="count(//suiteResults/INTEGRATION/tests/item[contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText) and contains(@*[name(.)='status'],'Pass')])"/></td>
								<td><span Class="Fail">Failed</span> - <xsl:value-of select="count(//suiteResults/INTEGRATION/tests/item[contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText) and contains(@*[name(.)='status'],'Fail')])"/></td>
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
