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
		<xsl:apply-templates select="suiteResults"/>
	</xsl:template>
	<xsl:template name="ResultsSummary">
		<!--<table border="0" cellpadding="2" cellspacing="1" width="100%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">-->
		<!--<table class="rowover" border="0" cellpadding="3" cellspacing="0" width="100%" striped="true" selectable="true" skipnlast="1" skipnfirst="3">-->
		<xsl:for-each select="//suiteResults/tests/item">
			<xsl:sort select="@scenario" data-type="text" order="ascending"/>
			<xsl:sort select="*[name(.)=$sortKey]|@*[name(.)=$sortKey]" order="{$sortOrder}"/>
			<xsl:sort select="*[name(.)=$sortKey3]|@*[name(.)=$sortKey3]" order="{$sortOrder3}"/>
			<!--<xsl:sort select="@suite" data-type="number" order="ascending"/>-->
			<xsl:if test="@scenario[.!='']">
			<xsl:if test="@suite[.!='']">
				<xsl:if test="contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText)">
					<xsl:if test="contains(*[name(.)=$sortKey1]|@*[name(.)=$sortKey1],$filterText1)">
						<xsl:if test="contains(*[name(.)=$sortKey2]|@*[name(.)=$sortKey2],$filterText2)">
							<xsl:if test="contains(*[name(.)=$sortKey3]|@*[name(.)=$sortKey3],$filterText3)">
								<xsl:if test="contains(*[name(.)=$sortKey4]|@*[name(.)=$sortKey4],$filterText4)">
								<!--<xsl:variable name="$filteredTests" select="$filteredTests + 1"/>-->
								<!--<xsl:if test="@suite[.='1']">-->
								<!--bgcolor="#999999"-->
								<!--<xsl:call-template name="incrementValue">
									<xsl:with-param name="value"><xsl:value-of select="$rowIndex"/></xsl:with-param>
								</xsl:call-template>-->
								<!--<xsl:with-param name="rowIndex" select="$rowIndex + 1"/>-->
								<div rowIndex="{position()}">
									<table class="rowover" border="0" cellpadding="1" cellspacing="0" width="100%" striped="true" selectable="true">
										<tr>
											<td width="2%" valign="middle" align="left" height="20">
												<xsl:element name="img">
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="border">0</xsl:attribute>
													<xsl:attribute name="vspace">3</xsl:attribute>
													<xsl:attribute name="src">../images/plus_box.gif</xsl:attribute>
													<xsl:attribute name="onclick">javascript:showHistory(this, "<xsl:value-of select="@scenario"/>", "<xsl:value-of select="position()"/>")</xsl:attribute>
													<!--<xsl:attribute name="onclick">vbscript:openScenarioHistory(<xsl:value-of select="$rowIndex"/>)</xsl:attribute>-->
												</xsl:element>
											</td>
											<td width="30%" valign="middle" align="left"><xsl:element name="a">
													<xsl:attribute name="href"><xsl:value-of select="@scenarioURL"/></xsl:attribute>
													<xsl:attribute name="target">_Blank</xsl:attribute>
													<xsl:value-of select="@scenario"/>
												</xsl:element></td>
											<td width="5%" valign="middle" align="left" height="20">
												<xsl:element name="span"><xsl:attribute name="class"><xsl:value-of select="@status"/></xsl:attribute>
													<xsl:value-of select="@status"/>
												</xsl:element>
											</td>
											<td width="5%" valign="middle" align="left" height="20">
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
													<!--<xsl:element name="a">-->
													<!--	<xsl:attribute name="href">#</xsl:attribute>-->
													<!--	<xsl:attribute name="onclick">vbscript:openScreenshot("""<xsl:value-of select="@screenshotURL"/>""")</xsl:attribute>-->
													<!--	<xsl:value-of select="@screenshotURL"/>-->
													<!--</xsl:element>-->
												</xsl:if>
											</td>
											<td width="20%" valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="@comments"/></span></td>
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
			</xsl:if>
			</xsl:if>
		</xsl:for-each>
		<!-- Summary row -->
		<!--<tr>
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
						<tr class="bg_darkblue">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>-->
		<!--<tr class="tablehl">
							<xsl:variable name="totalDurationSeconds" select="sum(//suiteResults/tests/item/@runDurationSeconds)"/>
							<xsl:variable name="secondsAsDecimalOfMinute" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60),&quot;.&quot;))"/>
							<xsl:variable name="seconds" select="$secondsAsDecimalOfMinute * 60"/>
							<xsl:variable name="minutesAsDecomalOfHour" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60),&quot;.&quot;))"/>
							<xsl:variable name="minutes" select="$minutesAsDecomalOfHour * 60"/>
							<xsl:variable name="hoursAsDecimalOfDay" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60 div 24),&quot;.&quot;))"/>
							<xsl:variable name="days" select="$hoursAsDecimalOfDay * 24"/>
							<xsl:variable name="hours" select="substring-before(string($totalDurationSeconds div 60 div 60),&quot;.&quot;)"/>
							<xsl:variable name="filteredTests" select="count(//suiteResults/tests/item[contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText)])"/>
							<td></td>
							<td>Total Tests - <xsl:value-of select="$filteredTests"/> 
							<span Class="Pass">Passed</span> - <xsl:value-of select="count(//suiteResults/tests/item[contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText) and contains(@*[name(.)='status'],'Pass')])"/>
							<span Class="Fail">Failed</span> - <xsl:value-of select="count(//suiteResults/tests/item[contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText) and contains(@*[name(.)='status'],'Fail')])"/>
							</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="2"><b>Run Duration - </b></td>
							<td colspan="3">
								<b><xsl:value-of select="floor($hours)"/> Hrs <xsl:value-of select="floor($minutes)"/> Mins <xsl:value-of select="floor($seconds)"/> Secs</b>
							</td>
							<td></td>
						</tr>-->
		<!--</table>
				</td>
			</tr>
			<br/><br/>
		</table>-->
	</xsl:template>
	<!-- ///////////////////////////////////////////////////////////// -->
	<xsl:template name="incrementValue">
		<xsl:param name="value"/>
		<xsl:if test="$value &lt;= 10">
			<!--<xsl:value-of select="$value"/>
			<xsl:value-of select="$rowIndex"/>-->
			<xsl:call-template name="incrementValue">
				<!--<xsl:with-param name="value" select="$value + 1"/>-->
				<xsl:with-param name="rowIndex" select="$value + 1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
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
