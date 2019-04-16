<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="sortKey" select="'scenario'"/>
	<xsl:param name="sortOrder" select="'ascending'"/>
	<xsl:param name="filterText" select="''"/>
	<xsl:param name="scenarioName" select="''"/>
	<xsl:template match="/">
		<xsl:apply-templates select="suiteResults"/>
	</xsl:template>
	<xsl:template name="ResultsSummary">
		<table border="0" cellpadding="2" cellspacing="1" width="90%" bgcolor="#666699">
			<xsl:for-each select="//suiteResults/test">
				<xsl:if test="contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText)">
					<xsl:for-each select="./item">
						<xsl:sort select="@dateRun" order="descending"/>
						<xsl:sort select="@lastRun" order="ascending"/>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td width="5%" valign="middle" align="left" height="20">
								</td>
								<td width="30%" valign="middle" align="left" height="20">
									<xsl:element name="a">
										<xsl:attribute name="href"><xsl:value-of select="@scenarioURL"/></xsl:attribute>
										<xsl:attribute name="target">_Blank</xsl:attribute>
										<xsl:value-of select="@runName"/>
									</xsl:element>
								</td>
								<td width="5%" valign="middle" align="left" height="20">
									<xsl:element name="span"><xsl:attribute name="class"><xsl:value-of select="@status"/></xsl:attribute>
										<xsl:value-of select="@status"/>
									</xsl:element>
								</td>
								<td width="1%" valign="middle" align="left" height="20">
									<xsl:if test="@failures[.!='0']">
										<xsl:element name="span"><xsl:attribute name="class"><xsl:value-of select="@status"/></xsl:attribute>
											(<xsl:value-of select="@failures"/>)
										</xsl:element>
									</xsl:if>
								</td>
								<td width="5%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@suite"/></b></span></td>
								<td width="1%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@testNumber"/></b></span></td>
								<td width="3%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@dateRun"/></b></span></td>
								<td width="3%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="@lastRun"/></span></td>
								<td width="2%" valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@runDuration"/></b></span></td>
								<td width="5%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="@host"/></span></td>
								<td width="2%" valign="middle" align="left" height="20">
									<xsl:if test="@screenshotURL[.!='']">
										<xsl:element name="img">
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="border">0</xsl:attribute>
											<xsl:attribute name="vspace">5</xsl:attribute>
											<xsl:attribute name="src">../images/link.gif</xsl:attribute>
											<xsl:attribute name="onclick">vbscript:openScreenshot("""<xsl:value-of select="@screenshotURL"/>""")</xsl:attribute>
										</xsl:element>
									</xsl:if>
								</td>
								<td width="30%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="@comments"/></span></td>
							</tr>
							<tr>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
							</tr>
						</table>
					</xsl:for-each>
				</xsl:if>
			</xsl:for-each>
			<!-- Summary row -->
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr class="bg_gray_eee" height="1">
				</tr>
				<tr class="bg_darkblue">
				</tr>
				<tr class="tablehl">
					<xsl:variable name="totalDurationSeconds" select="sum(//suiteResults/INTEGRATION/tests/item/@runDurationSeconds)"/>
					<xsl:variable name="secondsAsDecimalOfMinute" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60),&quot;.&quot;))"/>
					<xsl:variable name="seconds" select="$secondsAsDecimalOfMinute * 60"/>
					<xsl:variable name="minutesAsDecomalOfHour" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60),&quot;.&quot;))"/>
					<xsl:variable name="minutes" select="$minutesAsDecomalOfHour * 60"/>
					<xsl:variable name="hoursAsDecimalOfDay" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60 div 24),&quot;.&quot;))"/>
					<xsl:variable name="days" select="$hoursAsDecimalOfDay * 24"/>
					<xsl:variable name="hours" select="substring-before(string($totalDurationSeconds div 60 div 60),&quot;.&quot;)"/>
					<xsl:variable name="filteredTests" select="count(//suiteResults/INTEGRATION/tests/item)"/>
					<td width="30%"></td>
					<td width="30%">Total Suite Runs - <xsl:value-of select="$filteredTests"/></td>
					<td width="40%"><b>Average Run Duration - <xsl:value-of select="floor($hours)"/> Hrs <xsl:value-of select="floor($minutes)"/> Mins <xsl:value-of select="floor($seconds)"/> Secs</b>
					</td>
				</tr>
			</table>
		</table>
	</xsl:template>
	<!-- ///////////////////////////////////////////////////////////// -->
	<xsl:template match="steps">
		<xsl:choose>
			<xsl:when test="masterStep">
				<xsl:apply-templates select="masterStep"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="genericStep"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="masterStep">
		<table id="stepResults" border="0" cellpadding="2" cellspacing="1" width="99%">
			<tr>
				<tr align="left" border="0">
					<td width="100px" valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl" Localizable="True">Step Number:</span></td>
					<td valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl" Localizable="True">Action:</span></td>
				</tr>
				<!--<xsl:call-template name="Arguments"/>-->
				<xsl:apply-templates select="genericStep"/>
			</tr>
		</table>
	</xsl:template>
	<xsl:template name="genericStep">
		<table id="stepResults" border="0" cellpadding="2" cellspacing="1" width="99%">
			<tr>
				<tr align="left" border="0">
					<td width="100px" valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl" Localizable="True">Step Number:</span></td>
					<td valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl" Localizable="True">Action:</span></td>
				</tr>
				<!--<xsl:call-template name="Arguments"/>-->
				<xsl:apply-templates select="*[@rID]"/>
			</tr>
		</table>
	</xsl:template>
	<xsl:template match="DT">
		<!--xsl:element name="IFRAME">
		<xsl:attribute name="src"><xsl:value-of select="imageURL"/></xsl:attribute>
		<xsl:attribute name="width">100%</xsl:attribute>
		<xsl:attribute name="height">100%</xsl:attribute>
	</xsl:element-->
	</xsl:template>
	<!-- //////////////////////////// Test Iteration ///////////////////////////////// -->
	<xsl:template match="steps">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr><td class="iteration_head" Localizable="True">Scenario Steps: </td>
			</tr>
			<tr>
				<td class="iteration_border">
					<xsl:call-template name="GreenLine"/>
					<!-- //////////// This call template is what builds all the step results./////////// -->
					<xsl:apply-templates select="masterStep"/>
				</td>
			</tr>
		</table>
	</xsl:template>
	<!-- //////////////////////////// Results Summary  ///////////////////////////////// -->
	<xsl:template match="suiteResults">
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
