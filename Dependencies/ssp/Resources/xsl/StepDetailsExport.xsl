<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<!-- ////////////  Match the document node, HTML, head, scripts  ////////////// -->
<xsl:template match = "/">
<html>
<head>
    <title Localizable_1="True">SSP QTP Test Evidence File</title>
    <link rel="stylesheet" type="text/css" href="../../css/PResults.css" />
    <link rel="stylesheet" type="text/css" href="../../css/genericManager.css" />
</head>
<body bgcolor="#ffffff" leftmargin="0" marginwidth="20" topmargin="10" marginheight="10" vlink="#9966cc">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="5%">
			<img align="left" src="../../images/SSP word only.BMP"></img>
		</td>
		<td class="gradientRed" align="right">
			
			<div align="right" style="PADDING-BOTTOM: 7px;PADDING-TOP: 7px" class="dropshadow">QTP Automated Test Results</div>
		</td>
		<td bgcolor="#ed1c24" class="gradientBlack">
			<div style="FLOAT:right"><table>
				<tr><td width="90" class="textWhite"><!--<b>User: </b></td><td><span class="textWhite" id="currentUser"></span>--></td></tr>
			</table></div>
		</td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr height="2">
		<td width="100%" class="hl_qt"></td>
	</tr>
	<tr>
		<td class="hl0" colspan="2"></td>
	</tr>
</table>
   <center>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td class="hl0">
				<div align="left"><span class="hl0_name" style="padding-left=20px;" Localizable="True">Test:</span> <span class="hl0"><xsl:value-of select="genericReporter/general/scenarioName"/></span></div>
			</td>
		</tr>
	</table>
	<br/>
	<xsl:apply-templates select = "genericReporter"/>
    </center>
   </body>
</html>
</xsl:template>

<xsl:template name="ResultsSummary">
    <table border="0" cellpadding="2" cellspacing="1" width="100%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">
					<table border="0" cellpadding="3" cellspacing="0" width="100%">
						<tr bgcolor="gray">
							<td width="5%" valign="middle" align="left" class="textWhite"><b><span>Step </span> </b></td>
							<td width="5%" valign="middle" align="left" class="textWhite"><b><span>Status</span></b> </td>
							<td width="40%" valign="middle" align="left" class="textWhite"><b><span>Description</span></b> </td>
							<td width="25%" valign="middle" align="left" class="textWhite"><b><span>Comments</span></b> </td>
							<td width="25%" valign="middle" align="left" class="textWhite"><b><span>ImageURL</span></b> </td>
						</tr>
						<tr>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
						</tr>
						<xsl:for-each select="//genericReporter/steps/masterStep">
							<tr bgcolor="gray">
								<td valign="middle" align="left" height="20"><span class="textWhite"><b><xsl:value-of select="@number"/></b></span></td>
								<td valign="middle" align="left" height="20"><span class="textWhite"></span></td>
								<td valign="middle" align="left" height="20"><span class="textWhite"><b><xsl:value-of select="@description"/></b></span></td>
								<td valign="middle" align="left" height="20"><span class="textWhite"><b><xsl:value-of select="dataTable"/></b></span></td>
								<td valign="middle" align="left" height="20"><span class="textWhite"><b><xsl:value-of select="dataStepNumber"/></b></span></td>
							</tr>
							<tr>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
								<td class="bg_gray_eee" height="1"></td>
							</tr>
								<xsl:for-each select="childSteps/genericStep">
								<tr>
									<td style="padding-left=20px;" valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="@number"/></span></td>
									<td valign="middle" align="left" height="20">
										<xsl:element name="span"><xsl:attribute name="class"><xsl:value-of select="status"/></xsl:attribute>
											<xsl:value-of select="status"/>
										</xsl:element></td>
									<td valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="@description"/></span></td>
									<!--<td valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="comment"/></span></td>-->
										<xsl:if test="comments[.!='']">
											<!--<td valign="middle" align="left" height="20"><span class="text"></span></td>-->
											<td valign="middle" align="left" height="20" colspan="2">
												<div align="left" width="100%" class="text">
												<DIV class="text"><b>Failure description:</b></DIV>
												<FONT face="Verdana" size="2" color="red"><xsl:value-of select="comments"/></FONT>
												<FONT face="Verdana" size="2" color="blue"><DIV class="text"><B>Expected Results Were:</B></DIV></FONT>
												<FONT face="Verdana" size="2"><xsl:value-of select="expected"/></FONT>
												<FONT face="Verdana" size="2" color="blue"><DIV class="text"><B>Actual Results Were: </B></DIV></FONT>
												<!--<FONT face="Verdana" size="2"><xsl:value-of select="actual"/></FONT>-->
												<FONT face="Verdana" size="2"><xsl:call-template name="break"/></FONT>
												</div>
											</td>
										</xsl:if>
									<xsl:if test="comments[.='']">
										<td valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="imageURL"/></span></td>
									</xsl:if>
								</tr>
								<tr>
									<td class="bg_gray_eee" height="1"></td>
									<td class="bg_gray_eee" height="1"></td>
									<td class="bg_gray_eee" height="1"></td>
									<td class="bg_gray_eee" height="1"></td>
									<td class="bg_gray_eee" height="1"></td>
									<td class="bg_gray_eee" height="1"></td>
								</tr>
							</xsl:for-each>
						</xsl:for-each>
						<tr>
							<td class="bg_gray_eee" height="1"></td>
							<td class="bg_gray_eee" height="1"></td>
							<td class="bg_gray_eee" height="1"></td>
							<td class="bg_gray_eee" height="1"></td>
							<td class="bg_gray_eee" height="1"></td>
						</tr>
					</table>
				</td>
			</tr>
		<br/><br/>
	</table>
</xsl:template>

<xsl:template name="break">
 <xsl:param name="text" select="actual"/>
 <xsl:choose>
   <xsl:when test="contains($text, '&#xA;')">
     <xsl:value-of select="substring-before($text, '&#xA;')"/>
     <br/>
     <xsl:call-template name="break">
       <xsl:with-param name="text" select="substring-after($text,'&#xA;')"/>
     </xsl:call-template>
   </xsl:when>
   <xsl:otherwise>
           <xsl:value-of select="$text"/>
   </xsl:otherwise>
 </xsl:choose>
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
	<table id="stepResults" border="0" cellpadding="2" cellspacing="1" width="100%">
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
	<table id="stepResults" border="0" cellpadding="2" cellspacing="1" width="100%">
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
				<!-- //////////// This call template is what builds all the step results./////////// -->
				<xsl:apply-templates select = "masterStep" />
			</td>
		</tr>
	</table>
</xsl:template>


<!-- //////////////////////////// Results Summary  ///////////////////////////////// -->

<xsl:template match="genericReporter">
    <xsl:call-template name="Doc"/>
</xsl:template>

<xsl:template name="Doc">
	<table border="0" cellpadding="3" cellspacing="0" width="70%">
		<tr><td height="1"  colspan="4" class="bg_midblue"></td></tr>
		<tr><td height="30" colspan="4"><p/><span class="hl1name"><xsl:value-of select="//genericReporter/general/scenarioNumber" /></span><b><span class="hl1" Localizable="True"> Results Summary</span></b></td></tr>
		<tr><td height="2"  colspan="4" class="bg_darkblue"></td></tr>
		<tr><td height="20"></td></tr>
		<tr>
			<td><span class="text"><b>Scenario: </b></span></td>
			<td colspan="3"><span><xsl:value-of select="//genericReporter/general/scenarioName"/></span></td>
		</tr>
		<tr>
			<td width="20%"><span class="text" Localizable_bold="True"><b>Run Date: </b></span></td>
			<td width="30%"><span><xsl:value-of select="//genericReporter/general/dateRun"/></span></td>
			<td width="20%"><span class="text"></span></td>
			<td width="30%"><span></span></td>
		</tr>
		<tr>
			<td><span class="text" Localizable_bold="True"><b>Run End: </b></span></td>
			<td><span><xsl:value-of select="//genericReporter/general/runEnded"/></span></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><span class="text" Localizable_bold="True"><b>Total Run Time: </b></span></td>
			<td><span><xsl:value-of select="//genericReporter/general/totalRunTime"/> minutes</span></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><span class="text" Localizable_bold="True"><b>Test Machine: </b></span></td>
			<td><span><xsl:value-of select="//genericReporter/general/machineName"/></span></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><span class="text" Localizable_bold="True"><b>Test Environment: </b></span></td>
			<td><span><xsl:value-of select="//genericReporter/general/testEnvironment"/> (<xsl:value-of select="//genericReporter/general/releaseVersion"/>)</span><br/></td>
		</tr>
		<tr>
			<td><span class="text" Localizable_bold="True"><b>Results File Path: </b></span></td>
			<td colspan="3"><span><xsl:value-of select="//genericReporter/general/resultsFilePath"/></span></td>
		</tr>
		<tr>
			<td height="15"></td>
		</tr>
		<tr>
			<td><span class="text" Localizable_bold="True"><b>Result: </b> 
				<xsl:element name="span">
					<xsl:attribute name="class"><xsl:value-of select="//genericReporter/general/finalRunStatus"/></xsl:attribute>
					<xsl:value-of select="//genericReporter/general/finalRunStatus"/>
				</xsl:element></span>
			</td>
		</tr>
		<tr>
			<td height="15"></td>
		</tr>
	</table>
<!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
	<table border="0" cellpadding="2" cellspacing="1" width="50%" bgcolor="#666699">
		<tr>
			<td bgcolor="white">
				<table border="0" cellpadding="3" cellspacing="0" width="100%">
					<tr class="tablehl">
						<td width="25%" valign="middle" align="left" height="20"><b><span class="passed" Localizable="True">Passed - </span></b>
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@passed"/></span>
						</td>
						<td width="25%" valign="middle" align="left" height="20"><span class="failed" Localizable="True">Failed - </span>
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@failed"/></span>
						</td>
						<td width="25%" valign="middle" align="left" height="20"><span class="knownDefects"><span class="text" Localizable_bold="True"><b>Known Defects - </b></span></span>
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@knownDefects"/></span>
						</td>
						<td width="25%" valign="middle" align="left" height="20"><span class="missingData"><span class="text" Localizable_bold="True"><b>Missing Data - </b></span></span>
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@missingData"/></span>
						</td>
					</tr>
					<tr>
						<td class="bg_gray_eee" height="1" colspan="8"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<xsl:call-template name="ResultsSummary"/>
</xsl:template>
</xsl:stylesheet>

