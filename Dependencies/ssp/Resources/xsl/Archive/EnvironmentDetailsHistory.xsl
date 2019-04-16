<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="sortKey" select="'scenario'"/>
	<xsl:param name="sortOrder" select="'ascending'"/>
	<xsl:param name="filterText" select="''"/>
	<xsl:template match="/">
		<xsl:apply-templates select="suiteResults"/>
	</xsl:template>
	<xsl:template name="ResultsSummary">
		<table border="0" cellpadding="2" cellspacing="1" width="100%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">
					<table class="rowover" border="0" cellpadding="3" cellspacing="0" width="100%" striped="true" selectable="true" skipnlast="1" skipnfirst="3">
						<xsl:for-each select="//suiteResults/test">
							<xsl:sort select="@scenario" data-type="text" order="ascending"/>
							<xsl:sort select="*[name(.)=$sortKey]|@*[name(.)=$sortKey]" order="{$sortOrder}"/>
							<xsl:sort select="@suite" data-type="number" order="ascending"/>
							<!--<xsl:if test="contains(*[name(.)=$sortKey]|@*[name(.)=$sortKey],$filterText)">-->
							<xsl:if test="@template[.='False']">
								<tr class="historyRowHeader" bgcolor="CCCCCC">
									<td width="2%" valign="middle" align="left" height="20">
										<xsl:element name="img">
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="border">0</xsl:attribute>
											<xsl:attribute name="vspace">3</xsl:attribute>
											<xsl:attribute name="src">../images/plus_box.gif</xsl:attribute>
											<xsl:attribute name="onclick">vbscript:treeView("Expand")</xsl:attribute>
										</xsl:element>
									</td>
									<td width="30%" valign="middle" align="left" class="text_small_header"><span class="text_small_header"><b><xsl:value-of select="@scenario"/></b></span></td>
									<td width="5%" valign="middle" align="left" height="20">
										<xsl:element name="span">
											<xsl:attribute name="class"><xsl:value-of select="@status"/></xsl:attribute>
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
								<xsl:for-each select="./item">
									<xsl:sort select="@dateRun" order="descending"/>
									<xsl:sort select="@lastRun" order="ascending"/>
									<tr>
										<td valign="middle" align="left" height="20">
											<xsl:element name="img">
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="border">0</xsl:attribute>
												<xsl:attribute name="vspace">5</xsl:attribute>
												<xsl:attribute name="src">../images/currentTest.gif</xsl:attribute>
												<xsl:attribute name="onclick">vbscript:openLastRun("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
											</xsl:element>
										</td>
										<td valign="middle" align="left" height="20">
											<xsl:element name="a">
												<xsl:attribute name="href"><xsl:value-of select="@scenarioURL"/></xsl:attribute>
												<xsl:attribute name="target">_Blank</xsl:attribute>
												<xsl:value-of select="@runName"/>
											</xsl:element>
										</td>
										<td valign="middle" align="left" height="20">
											<xsl:element name="span"><xsl:attribute name="class"><xsl:value-of select="@status"/></xsl:attribute>
												<xsl:value-of select="@status"/>
											</xsl:element>
										</td>
										<td valign="middle" align="left" height="20">
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
										<td valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="@comments"/></span></td>
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
								</xsl:for-each>
							</xsl:if>
						</xsl:for-each>
						<!-- Summary row -->
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
							<td></td>
							<td>Total Tests - <xsl:value-of select="$filteredTests"/></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td colspan="2"><b>Run Duration - </b></td>
							<td colspan="3">
								<b><xsl:value-of select="floor($hours)"/> Hrs <xsl:value-of select="floor($minutes)"/> Mins <xsl:value-of select="floor($seconds)"/> Secs</b>
							</td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
			<br/><br/>
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
