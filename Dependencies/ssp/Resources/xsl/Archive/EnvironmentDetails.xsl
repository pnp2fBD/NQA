<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:param name="sortKey" select="'suite'"/>
<xsl:param name="sortOrder" select="'ascending'"/>
<xsl:template match = "/">
<html>
	<head>
    	<title Localizable_1="True">SSP QTP Test Evidence File</title>
    	<link rel="stylesheet" type="text/css" href="../css/PResults.css" />
   </head>
   <script language="VBScript" src="../scripts/common.vbs"></script>
   <body bgcolor="#ffffff" leftmargin="0" marginwidth="20" topmargin="10" marginheight="10" vlink="#9966cc" >
   <center>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td class="hl_qt">
				<img align="left" vspace ="3" src="../images/Koukia2.JPG"></img><div align="left" style="padding-top=20px;"><span class="hl_qt" Localizable_1="True" style="padding-left=20px; padding-top=40px;">QTP Automated Test Results Summary</span></div>
			</td>
		</tr>
		<tr>
			<td class="hl0">
				<div align="left"><span class="hl0_name" style="padding-left=20px;" Localizable="True">Environment:</span> <span class="hl0"><xsl:value-of select="/suiteResults/@environment"/></span></div>
			</td>
		</tr>
	</table>
			<br/>
		<xsl:apply-templates select = "suiteResults"/>
    </center>
   </body>
</html>
</xsl:template>

<xsl:template name="ResultsSummary">
    <table border="0" cellpadding="2" cellspacing="1" width="100%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">
					<table class="rowover" border="0" cellpadding="3" cellspacing="0" width="100%" striped="true" selectable="true" skipnlast="1" skipnfirst="3">
						<tr>
							<td width="2%" valign="middle" align="left" class="tablehl"><b> <span class="tablehl" Localizable="True"></span></b></td>
							<td width="30%" valign="middle" align="left" class="tablehl"><b> <span class="tablehl" Localizable="True">Scenario </span> </b></td>
							<td width="5%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Status</span></b></td>
							<td width="5%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True"></span></b></td>
							<td width="5%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Suite</span></b></td>
							<td width="1%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">#</span></b> </td>
							<td width="3%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Run Date</span></b></td>
							<td width="3%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Run Finished</span></b> </td>
							<td width="2%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Run Duration</span></b> </td>
							<td width="5%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Host</span></b></td>
							<td width="2%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Screenshot URL</span></b></td>
							<td width="20%" valign="middle" align="left" class="tablehl"><b><span class="tablehl" Localizable="True">Run Comments</span></b></td>
						</tr>
                        <tr>
							<td width="2%" valign="middle" align="left" class="tablehl"><b> <span class="tablehl" Localizable="True"></span></b></td>
							<td width="30%" valign="middle" align="left" class="tablehl">
								<xsl:element name="img">
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="vspace">5</xsl:attribute>
									<xsl:attribute name="src">../images/plus_box.gif</xsl:attribute>
									<xsl:attribute name="onclick">vbscript:filterXMLResults("Scenario Ascending")</xsl:attribute>
								</xsl:element>
								<xsl:element name="img">
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="vspace">7</xsl:attribute>
									<xsl:attribute name="src">../images/bullet_green_arrow_right.gif</xsl:attribute>
									<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
								</xsl:element>
								<input></input>
                            </td>
							<td width="5%" valign="middle" align="left" class="tablehl">
							<xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/plus_box.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
                            <xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/bullet_green_arrow_right.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
							</td>
							<td width="5%" valign="middle" align="left" class="tablehl"></td>
							<td width="5%" valign="middle" align="left" class="tablehl">
							<xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/plus_box.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
                            <xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/bullet_green_arrow_right.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
							</td>
							<td width="1%" valign="middle" align="left" class="tablehl"></td>
							<td width="3%" valign="middle" align="left" class="tablehl">
							<xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/plus_box.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
                            <xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/bullet_green_arrow_right.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
							</td>
							<td width="3%" valign="middle" align="left" class="tablehl"></td>
							<td width="2%" valign="middle" align="left" class="tablehl"></td>
							<td width="5%" valign="middle" align="left" class="tablehl">
							<xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/plus_box.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
                            <xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/bullet_green_arrow_right.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:filterXMLResults("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
							</td>
							<td width="2%" valign="middle" align="left" class="tablehl"></td>
							<td width="20%" valign="middle" align="left" class="tablehl"></td>
						</tr>
						<tr>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
						</tr>
						<xsl:for-each select="//suiteResults/INTEGRATION/tests/item">
                        <!--<xsl:sort select="@scenario" data-type="text" order="ascending"/>-->
						<xsl:sort select="*[name(.)=$sortKey]|@*[name(.)=$sortKey]"	order="{$sortOrder}"/>
						<!--<xsl:sort select="@suite" data-type="number" order="ascending"/>-->
							<xsl:if test="@scenario[.!='']">
							<xsl:if test="contains(@scenario,'')">
							<!--<xsl:if test="@suite[.='1']">-->
							<!--bgcolor="#999999"-->
							<tr>
								<td valign="middle" align="left" height="20">
                                    <xsl:element name="img">
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="border">0</xsl:attribute>
										<xsl:attribute name="vspace">3</xsl:attribute>
										<xsl:attribute name="src">../images/history.gif</xsl:attribute>
										<xsl:attribute name="onclick">vbscript:openScenarioHistory("""<xsl:value-of select="@scenarioURL"/>""")</xsl:attribute>
									</xsl:element>
								</td>
								<td valign="middle" align="left"><xsl:element name="a">
									<xsl:attribute name="href"><xsl:value-of select="@scenarioURL"/></xsl:attribute>
									<xsl:attribute name="target">_Blank</xsl:attribute>
									<xsl:value-of select="@scenario"/>
									</xsl:element></td>
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
								<td valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@suite"/></b></span></td> 
								<td valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@testNumber"/></b></span></td> 
								<td valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@dateRun"/></b></span></td>		
								<td valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="@lastRun"/></span></td>
								<td valign="middle" align="left" height="20"><span class="text_small"><b><xsl:value-of select="@runDuration"/></b></span></td>
								<td valign="middle" align="left" height="20"><span class="text_small"><xsl:value-of select="@host"/></span></td>
								<td valign="middle" align="left" height="20">
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
							</xsl:if>
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
                            <xsl:variable name="secondsAsDecimalOfMinute" select='concat("0.",substring-after(string($totalDurationSeconds div 60),"."))' />
							<xsl:variable name="seconds" select='$secondsAsDecimalOfMinute * 60' />
							<xsl:variable name="minutesAsDecomalOfHour" select='concat("0.",substring-after(string($totalDurationSeconds div 60 div 60),"."))' />
							<xsl:variable name="minutes" select='$minutesAsDecomalOfHour * 60' />
							<xsl:variable name="hoursAsDecimalOfDay" select='concat("0.",substring-after(string($totalDurationSeconds div 60 div 60 div 24),"."))' />
							<xsl:variable name="hours" select='$hoursAsDecimalOfDay * 24' />
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><b>Run Duration</b></td>
							<td>
								<b><xsl:value-of select='floor($hours)'/>:<xsl:value-of select='floor($minutes)'/>:<xsl:value-of select='floor($seconds)'/></b>
							</td>
							<td></td>
							<td></td>
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
		<xsl:when test = "masterStep">
			<xsl:apply-templates select = "masterStep" />
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
			<xsl:apply-templates select = "genericStep" />
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
			<xsl:apply-templates select = "*[@rID]" />
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
				<xsl:apply-templates select = "masterStep" />
			</td>
		</tr>
	</table>
</xsl:template>


<!-- //////////////////////////// Results Summary  ///////////////////////////////// -->

<xsl:template match="suiteResults">
    <xsl:call-template name="Doc"/>
</xsl:template>

<xsl:template name="Doc">

	<table border="0" cellpadding="3" cellspacing="0" width="50%">
		<tr><td height="1" class="bg_midblue"></td></tr>
		<tr><td height="30"><p/><span class="hl1name"><b><xsl:value-of select="//suiteResults/@environment" /></b></span><b><span class="hl1" Localizable="True"> Results Summary</span></b></td></tr>
		<tr><td height="2" class="bg_darkblue"></td></tr>
		<tr><td height="20"></td></tr>
		<!--tr><td><span class="text" Localizable_bold="True"><b>Suite Last Run: </b> <xsl:value-of select="//suiteResults/INTEGRATION/@lastRun"/></span></td></tr>-->
		<!--<tr><td><span class="text" Localizable_bold="True"><b>Document URL: </b> <xsl:value-of select="//suiteResults/INTEGRATION/@resultsSummaryURL"/></span></td></tr>-->
        <!--<tr><td height="15"></td></tr>-->
		<!--<tr><td><span class="text" Localizable_bold="True"><b>Result: </b> <xsl:element name="span">-->
		<!--									<xsl:attribute name="class"><xsl:value-of select="//genericReporter/general/finalRunStatus"/></xsl:attribute>-->
		<!--									<xsl:value-of select="//genericReporter/general/finalRunStatus"/>-->
		<!--								</xsl:element></span></td></tr>-->
		<!--<tr><td height="15"></td></tr>-->

	</table>
<!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
	<table border="0" cellpadding="2" cellspacing="1" width="30%" bgcolor="#666699">
		<tr>
			<td bgcolor="white">
				<table border="0" cellpadding="3" cellspacing="0" width="100%">
					<tr>
						<td width="50%" valign="middle" align="left" class="tablehl"><b> <span class="tablehl" Localizable="True">Status </span> </b></td>
						<td width="50%" valign="middle" align="left" class="tablehl"> <b><span class="tablehl" Localizable="True">Times</span></b> </td>
					</tr>
					<tr>
						<td width="50%" height="1" class="bg_darkblue"></td><td width="50%" height="1" class="bg_darkblue"></td>
					</tr>
					<tr>
						<td width="50%" valign="middle" align="left" height="20"><b><span class="passed" Localizable="True">Passed</span></b></td>
						<td width="50%" valign="middle" align="left" height="20">
							<span class="text"><xsl:value-of select="count(//suiteResults/INTEGRATION/tests/item[@status='Pass'])"/></span>
						</td>
					</tr>
					<tr>
						<td width="50%" height="1" class="bg_gray_eee"></td>
						<td width="50%" height="1" class="bg_gray_eee"></td>
					</tr>
					<tr>
						<td width="50%" valign="middle" align="left" height="20"><span class="failed" Localizable="True">Failed</span></td>
						<td width="50%" valign="middle" align="left" height="20">
							<span class="text"><xsl:value-of select="count(//suiteResults/INTEGRATION/tests/item[@status='Fail'])"/></span>
						</td>
					</tr>
					<tr>
						<td width="50%" height="1" class="bg_darkblue"></td><td width="50%" height="1" class="bg_darkblue"></td>
					</tr>
                    <tr>
						<td width="50%" valign="middle" align="left" height="20" class="tablehl" Localizable_bold="True"><b>Total Tests</b></td>
						<td width="50%" valign="middle" align="left" height="20" class="tablehl">
						<xsl:variable name="numberPassed" select="count(//suiteResults/INTEGRATION/tests/item[@status='Fail'])"/>
							<span class="text"><xsl:value-of select="count(//suiteResults/INTEGRATION/tests/item[@status='Pass']) + $numberPassed"/></span>
						</td>
					</tr>
					<tr>
						<td width="50%" height="1" class="bg_darkblue"></td><td width="50%" height="1" class="bg_darkblue"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<xsl:call-template name="ResultsSummary"/>
	<xsl:call-template name="GreenLine"/>
	<xsl:apply-templates select = "*[@rID]" />
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

