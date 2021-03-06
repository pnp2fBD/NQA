<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<!-- ////////////  Match the document node, HTML, head, scripts  ////////////// -->
<xsl:template match = "/">
<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
<HTML lang='en'>
	<HEAD>
    <!--<meta http-equiv="X-UA-Compatible" content="chrome=1, IE=edge"/>-->
    <title><xsl:value-of select="//genericReporter/general/scenarioName"/> - Scenario Evidence</title>
    <script language="Javascript" src="../../scripts/js/frameWorkGeneric.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/genericManager.css"/>
    <style>
    PassedDisplay {
        display:block;
    }
    FailedDisplay {
        display:block;
    }
    .hand {
        cursor:hand;
    }
    </style>
    <script language="Javascript">
      var show = 0;
      function resetDivHeight(){
      document.getElementById("theSummaryData").style.height = (getWindowHeight() - 285) + 'px';
      document.getElementById("theSummaryData").style.width = (getWindowWidth() - 10) + 'px';
      }
      function ShowHide(type){
      switch (type)
      {
      case "All":
      ChangeCSSClass(".MasterDisplay", "display", "block");
      ChangeCSSClass(".PassedDisplay", "display", "block");
      ChangeCSSClass(".FailedDisplay", "display", "block");
      ChangeCSSClass(".Known DefectedDisplay", "display", "block");
      ChangeCSSClass(".Missing DataedDisplay", "display", "block");
      break;
      case "Failed":
      ChangeCSSClass(".MasterDisplay", "display", "none");
      ChangeCSSClass(".PassedDisplay", "display", "none");
      ChangeCSSClass(".FailedDisplay", "display", "block");
      ChangeCSSClass(".Known DefectedDisplay", "display", "none");
      ChangeCSSClass(".Missing DataedDisplay", "display", "none");
      break;
      case "KnownDefects":
      ChangeCSSClass(".MasterDisplay", "display", "none");
      ChangeCSSClass(".PassedDisplay", "display", "none");
      ChangeCSSClass(".FailedDisplay", "display", "none");
      ChangeCSSClass(".Known DefectedDisplay", "display", "block");
      ChangeCSSClass(".Missing DataedDisplay", "display", "none");
      break;
      case "MissingData":
      ChangeCSSClass(".MasterDisplay", "display", "none");
      ChangeCSSClass(".PassedDisplay", "display", "none");
      ChangeCSSClass(".FailedDisplay", "display", "none");
      ChangeCSSClass(".Known DefectedDisplay", "display", "none");
      ChangeCSSClass(".Missing DataedDisplay", "display", "block");
      break;
      }
      }

    </script>
  </HEAD>
<body bgcolor="#ffffff" leftmargin="2" rightmargin="2" topmargin="2" onload="resetDivHeight();" onresize="resetDivHeight();">
  <div style="clear:both; background-color:#666;height:1px;"></div>
  <div style="clear:both;  background-color:Black; height:25px;" class="gradientWhiteBlack">
    <div style="float:right; padding-top:1px; padding-right:5px; cursor:pointer; height:25px"></div>
  </div>
  <div style="clear:both; background-color:white;height:1px;"></div>
  <div style="background-image: url('../../images/sspbackground.png'); height:70px; "></div>
  <DIV STYLE="position:absolute; top:30px; right:10px; width:350px;">
    <span class="textWhite">
      <b>Run ID: </b>
    </span>
    <span class="textWhite" id="currentUser">
      <xsl:value-of select="genericReporter/general/regressionRunID"/>
    </span>
  </DIV>
  <DIV STYLE="position:absolute; top:50px; right:10px; width:350px;">
    <span class="textWhite">
      <b>Application: </b>
    </span>
    <span class="textWhite" id="applicationRef">SSP SELECT</span>
  </DIV>
  <DIV STYLE="position:absolute; top:70px; right:10px; width:350px;">
    <span class="textWhite">
      <b>Environment: </b>
    </span>
    <span class="textWhite" id="environmentHeader">
      <xsl:value-of select="//genericReporter/general/testEnvironment"/> (<xsl:value-of select="//genericReporter/general/releaseVersion"/>)
    </span>
    <!--<select style="display:inline; height:18px;" class="text_small" id="environmentSelect" onkeydown="trapEnterKey(this)"></select>-->
  </DIV>
  
  <div STYLE="background-image:url('../../images/ssp word only.BMP'); height:65px;" class="gradientlogo"></div>
  <div style="clear:both; background-color:white;height:1px;"></div>
  <div style="clear:both; background-color:#666;height:1px;"></div>
  <div style="clear:both; background-color:white;height:10px;"></div>
  <DIV STYLE="position:absolute; top:45px; left:200px; font-weight:bold; color:White; font-family:Calibri; font-size:24px;" id="PageHeading">
    <div style="float:left; padding-top:0px; height:25px">
      <div>
        Scenario Regression Results
      </div>
    </div>
  </DIV>
  <div STYLE="position:absolute; top:73px; left:200px; height:20px">
    <div style="float:left; padding-top:5px; cursor:pointer; height:25px">
      <div STYLE="color:White; font-family:Calibri; font-size:12px;"><xsl:value-of select="//genericReporter/general/scenarioName"/>
      </div>
    </div>
  </div>
  <br/>
	  <xsl:apply-templates select = "genericReporter"/>
  </body>
</HTML>
</xsl:template>

<xsl:template name="ResultsSummary">

	<div id="theSummaryData" class="FixedTableHead" style="OVERFLOW:auto; HEIGHT:480px">
      <table id ="summaryTable" style="border-collapse:collapse;" width="100%">
			<thead>
				<tr bgcolor="gray">
					<td style="width:20px"><b> <span class="textWhite">Step </span> </b></td>
					<td style="width:30px"><b><span class="textWhite">Status</span></b> </td>
					<td style="width:250px"><b><span class="textWhite">Description</span></b> </td>
					<td style="width:50px"><b><span class="textWhite">Comments/Timestamp</span></b> </td>
					<td style="width:450px"><b><span class="textWhite">Data Table/Steps Number</span></b> </td>
				</tr>
      </thead>
				<xsl:for-each select="//genericReporter/steps/masterStep">
					<tr class="MasterDisplay" bgcolor="#999999" style="BORDER-BOTTOM:#CCCCCC 1px solid;">
						<td style="height:20px"><span class="textWhite"><b><xsl:value-of select="@number"/></b></span></td>
						<td><span class="textWhite"></span></td>
						<td colspan="2"><span class="textWhite"><b><xsl:value-of select="@description"/></b></span></td>
						<td><span class="textWhite"><b><xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/></b></span></td>
					</tr>
						<xsl:for-each select="childSteps/genericStep">
						<xsl:element name="tr">
              <xsl:attribute name="style">"BORDER-BOTTOM:#CCCCCC 1px solid;"</xsl:attribute>
              <xsl:attribute name="class"><xsl:value-of select="status"/>edDisplay</xsl:attribute>
              <td class="tdBottomBorder"><span class="text_small"><xsl:value-of select="@number"/></span></td>
              <td class="tdBottomBorder" onclick="ShowHide('All')">
								<xsl:element name="span">
                  <xsl:attribute name="class"><xsl:value-of select="status"/></xsl:attribute>
									<xsl:value-of select="status"/>
								</xsl:element>
              </td>
							<td class="tdBottomBorder"><div class="text_small"><xsl:value-of select="@description"/></div></td>
							  <xsl:choose>
								<xsl:when test="string-length(comments)>1 and (status='Fail' or status='Known Defect' or status='Missing Data')">
                  <td class="tdBottomBorder" colspan="2">
										<div class="text_small">
                      <div class="text_small">
                        <xsl:value-of select="time"/>
                      </div>
                      <div class="Scenario">Failure description:</div>
                        <div class="textRed"><xsl:value-of select="comments"/>
                        </div>
                        <div class="Scenario">Expected Results Were: </div>
                        <textarea class="text_small" style="border:0;width:650px;overflow:auto"><xsl:value-of select="expected"/></textarea>
                      <div class="Scenario">Actual Results Were: </div>
                           <xsl:element name="textarea">
                             <xsl:attribute name="class">text_small</xsl:attribute>
                                <xsl:choose>
                                    <xsl:when test="(string-length(actual)>50)">
                                        <xsl:attribute name="style">border:0;width:650px;height:150px;overflow:auto</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:attribute name="style">border:0;width:650px;height:30px;overflow:auto</xsl:attribute>
                                    </xsl:otherwise>
                                </xsl:choose> 
                                <xsl:value-of select="actual"/>
                            </xsl:element>
                      <div class="text_small">Screenshot: </div>
                          <xsl:element name="a">
                              <xsl:attribute name="href">
                                  <xsl:value-of select="imageURL"/>
                              </xsl:attribute>
                              <xsl:value-of select="imageURL"/>
                          </xsl:element>
                      <div style="color:gray;"><xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/>
                      </div>
										</div>
									</td>
								</xsl:when>
                <xsl:otherwise>
                  <td class="tdBottomBorder">
                      <SPAN class="text"><xsl:value-of select="time"/></SPAN>
                  </td>
                  <td class="tdBottomBorder">
                      <span style="color:gray;"><xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/></span>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
							<xsl:if test="comments[.='']">
								<!--<td style="border-bottom:#CCCCCC 1px solid;" valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="imageURL"/></span></td>-->
							</xsl:if>
						<!--</tr>-->
            </xsl:element>
          </xsl:for-each>
				</xsl:for-each>
				
		</table>
  </div> 
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
				<td style="width:100px" valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl">Step Number:</span></td>
				<td valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl">Action:</span></td>
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
				<td style="width:100px" valign="middle" align="left" class="tablehl"><span style="width:100%" class="tablehl">Step Number:</span></td>
				<td valign="middle" align="left" class="tablehl"><span style="width:100%" class="tablehl">Action:</span></td>
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
		<tr><td class="iteration_head">Scenario Steps: </td>
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
  <div style="padding-left:20px;">
    <table border="0" cellpadding="1" cellspacing="0" width="95%">
		<tr><td style="width:105px"><span class="text"><b>Results File Path : </b></span></td><td><span> <xsl:value-of select="//genericReporter/general/resultsFilePath"/></span></td></tr>
		<tr><td><span class="text"><b>Automation Tool : </b></span></td><td><span> <xsl:value-of select="//genericReporter/general/product"/></span></td></tr>
		<tr><td><span class="text"><b>Result : </b></span></td><td><span><xsl:element name="span">
											<xsl:attribute name="class"><xsl:value-of select="//genericReporter/general/finalRunStatus"/></xsl:attribute>
											<xsl:value-of select="//genericReporter/general/finalRunStatus"/>
										</xsl:element></span></td></tr>
		<tr><td height="15"></td></tr>
	  </table>
  </div>
  <!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
  <center>
	<table border="0" cellpadding="2" cellspacing="1" width="90%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">
					<table border="0" cellpadding="3" cellspacing="0" width="100%">
						<tr class="tablehl">
							<td title="Click to display all test steps" class="hand" onclick="ShowHide('All')"><span Class="Pass">Passed </span>: <xsl:value-of select="//genericReporter/general/results/@passed"/></td>
							<td title="Click to display only the failed steps" class="hand" onclick="ShowHide('Failed')"><span Class="Fail">Failed </span>: <xsl:value-of select="//genericReporter/general/results/@failed"/></td>
							<td title="Click to display only the Know Defects steps" class="hand" onclick="ShowHide('KnownDefects')"><span Class="Known">Known Defects </span>: <xsl:value-of select="//genericReporter/general/results/@knownDefects"/></td>
							<td title="Click to display only the Missing Data steps" class="hand" onclick="ShowHide('MissingData')"><span Class="Missing">Missing Data </span>: <xsl:value-of select="//genericReporter/general/results/@missingData"/></td>
							<td>Run Date : <xsl:value-of select="//genericReporter/general/dateRun"/></td>
              <td>Run Start : <xsl:value-of select="//genericReporter/general/runStarted"/></td>
              <td>Run End : <xsl:value-of select="//genericReporter/general/runEnded"/></td>
							<td>Run Duration : <xsl:value-of select="//genericReporter/general/totalRunTime"/> minutes</td>
              <td><b>Host : </b><xsl:value-of select="//genericReporter/general/machineName"/></td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
  </center>
	<xsl:call-template name="ResultsSummary"/>
</xsl:template>
</xsl:stylesheet>

