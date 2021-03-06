<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<!-- ////////////  Match the document node, HTML, head, scripts  ////////////// -->
<xsl:template match = "/">
<html >
	<head>
    	<title>SSP Test Evidence File</title>
        <STYLE type="text/css">
            .hl_qt  { color: white; font-size: 24pt; font-family: Arial; background-color: #666; text-align: center; padding: 0px 3px 3px }
            .hl0
            { color: #999; font-weight: bold; font-size: 18pt; font-family: Arial; text-align: center; padding: 2px 3px; border-bottom: 3px dotted #999 }
            .hl0_name { color: #999; font-weight: normal; font-size: 18pt; font-family: Arial; text-align: center; padding: 2px 3px; border-bottom: 3px dotted #999 }
            .hl1
            {
            COLOR: #669;
            FONT-FAMILY: Arial;
            FONT-SIZE: 16pt;
            FONT-WEIGHT: bold
            }
            .hl2
            {
            COLOR: #669;
            FONT-FAMILY: Arial;
            FONT-SIZE: 13pt;
            FONT-WEIGHT: bold
            }
            .hl3 { color: #666; font-weight: bold; font-size: 10pt; font-family: Arial; height: 28px }
            .hl1name
            {
            COLOR: #669;
            FONT-FAMILY: Arial;
            FONT-SIZE: 16pt;
            FONT-WEIGHT: normal
            }
            .bg_yellow
            {
            BACKGROUND-COLOR: #fc0
            }
            .bg_gray_eee
            {
            BACKGROUND-COLOR: #eee
            }
            .bg_gray_ccc { background-color: #ccc }
            .bg_gray_999 { background-color: #999 }
            .bg_midblue
            {
            BACKGROUND-COLOR: #99c
            }
            .bg_ligtblue
            {
            BACKGROUND-COLOR: #ccf
            }
            .bg_darkblue
            {
            BACKGROUND-COLOR: #669
            }
            .bg_white
            {
            BACKGROUND-COLOR: white
            }
            .ascending
            {
            src: "../images/bullet-minus-icon.gif"
            }
            .descending
            {
            src: "../images/plus_box.gif"
            }
            .text
            { font-size: 8pt; font-family: Arial }
            .textWhite
            { font-size: 10pt; color: white; font-family: Arial }
            .textBold
            { font-size: 10pt; font-family: Arial; FONT-WEIGHT: bold }
            .text_small
            {
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt
            }
            .text_pitzi
            {
            FONT-FAMILY: Arial;
            FONT-SIZE: 6.5pt
            }
            .text_bold
            {
            FONT-FAMILY: Arial;
            FONT-WEIGHT: bold
            }
            .textBlueHeader
            {
            COLOR: #669;
            FONT-FAMILY: Arial;
            FONT-SIZE: 10pt;
            FONT-WEIGHT: bold
            }

            .text
            {
            font-size: 8pt;
            font-family: Arial
            }

            .textWhite
            {  font-size: 8pt;
            color: white;
            font-family: Arial
            }

            .Failed
            {
            COLOR: #f03;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .Fail
            {
            COLOR: #f03;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .FailedLow
            {
            COLOR: #f03;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            }

            .FailedHigh
            {
            COLOR: #f03;
            FONT-FAMILY: Arial;
            FONT-SIZE: 16pt;
            FONT-WEIGHT: bold
            }
            .Passed
            {
            COLOR: #096;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .Pass
            {
            COLOR: #096;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .PassedHigh
            {
            COLOR: #096;
            FONT-FAMILY: Arial;
            FONT-SIZE: 16pt;
            FONT-WEIGHT: bold
            }

            .Done
            {
            COLOR: #999;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .DoneHigh
            { color: #999; font-weight: bold; font-size: 16pt; font-family: Arial }
            .Information
            {
            COLOR: #999;
            FONT-FAMILY: Arial;
            FONT-SIZE: 10pt;
            FONT-WEIGHT: bold
            }
            .InformationHigh
            {
            COLOR: #999;
            FONT-FAMILY: Arial;
            FONT-SIZE: 16pt;
            FONT-WEIGHT: bold
            }
            .KnownDefects
            {
            COLOR: #f96;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .Known
            {
            COLOR: #f96;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .Known .Defects
            {
            COLOR: #f96;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .MissingData
            {
            COLOR: purple;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .Missing
            {
            COLOR: purple;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .Missing .Data
            {
            COLOR: purple;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold
            }
            .knownDefectsHigh
            {
            COLOR: #f96;
            FONT-FAMILY: Arial;
            FONT-SIZE: 16pt;
            FONT-WEIGHT: bold
            }
            .tablehl
            {
            BACKGROUND-COLOR: #eee;
            COLOR: #669;
            FONT-FAMILY: Arial;
            FONT-SIZE: 10pt;
            FONT-WEIGHT: bold;
            LINE-HEIGHT: 14pt
            }
            .tableSmall
            {
            BACKGROUND-COLOR: #eee;
            COLOR: #669;
            FONT-FAMILY: Arial;
            FONT-SIZE: 8pt;
            FONT-WEIGHT: bold;
            LINE-HEIGHT: 14pt
            }
            .tableSmallNonBold
            {
            BACKGROUND-COLOR: #eee;
            COLOR: #669;
            FONT-FAMILY: Arial;
            FONT-SIZE: 7pt;
            LINE-HEIGHT: 14pt
            }
            A
            {
            COLOR: #33f;
            FONT-FAMILY: Arial
            }
            A:hover
            {
            COLOR: #f03;
            FONT-FAMILY: Arial;
            FONT-WEIGHT: bold
            }
            .Condition
            {
            COLOR: #333399;
            FONT-FAMILY: Arial;
            FONT-SIZE: 10pt;
            FONT-WEIGHT: bold
            }
            .editText
            {
            font-size: 8pt;
            font-family: Arial;
            FONT-WEIGHT: bold;
            }

            .dataText
            {
            font-size: 8pt;
            font-family: Arial;
            }

            .resultsEdit
            {
            font-size: 8pt;
            font-family: Arial;
            FONT-WEIGHT: bold;
            width:40px;
            height:20px
            }
            body { font-family: Arial }
		        PassedDisplay {
                display:block;
            }
            FailedDisplay {
                display:block;
            }
            .hand {
                cursor:hand; font-size:8pt; font-family: Arial
            }
        </STYLE>
	<script language="Javascript">
    var show = 0;
    function resetDivHeight(){
        document.getElementById("theSummaryData").style.height = (getWindowHeight() - 285) + 'px';
        document.getElementById("PageHeading").style.left = (getWindowWidth() - 800)/2 + 'px';
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
    
        function getWindowHeight() {
            var windowHeight=0;
            if (typeof(window.innerHeight)=='number') {
	            windowHeight=window.innerHeight;
            }else{
	            if (document.documentElement &amp;&amp;	document.documentElement.clientHeight){
		            windowHeight=document.documentElement.clientHeight;
	            }else{
		            if (document.body&amp;&amp;document.body.clientHeight) {
			            windowHeight=document.body.clientHeight;
		            }
	            }
            }
            return windowHeight;
        }

        function getWindowWidth() {
            var windowWidth = 0;
            if (typeof (window.innerHeight) == 'number') {
                windowWidth = window.innerWidth;
            } else {
            if (document.documentElement &amp;&amp; document.documentElement.clientWidth) {
                    windowWidth = document.documentElement.clientWidth;
                } else {
                if (document.body &amp;&amp; document.body.clientWidth) {
                        windowWidth = document.body.clientWidth;
                    }
                }
            }
            return windowWidth;
        }
    </script>
    </head>
   <body bgcolor="#ffffff" leftmargin="0" marginwidth="20" topmargin="10" marginheight="10" vlink="#9966cc" onload="resetDivHeight();" onresize="resetDivHeight();">
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		  <td width="5%"></td>
               <td style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#ED1C24', startColorstr='white', gradientType='1')" align="right">
                   <div align="right" style="PADDING-BOTTOM: 7px;PADDING-TOP: 7px; width:450px; color:white; font-size:24pt; font-family: Arial; text-align: center; filter:shadow(color:#000006, strength:4, direction=220);"></div>
               </td>
               <td bgcolor="#ed1c24" style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#000000', startColorstr='#ED1C24', gradientType='1');">
			  <div style="float:right">
          <table>
               <tr>
                   <td width="90" class="textWhite">
                       <b>Run ID: </b>
                   </td>
                   <td>
                       <span class="textWhite">
                           <xsl:value-of select="genericReporter/general/regressionRunID"/>
                       </span>
                   </td>
               </tr>
               <tr>
                   <td width="90" class="textWhite">
                       <b>Application: </b>
                   </td>
                   <td>
                       <span class="textWhite" id="applicationRef" value="InsureJ">InsureJ</span>
                   </td>
               </tr>
               <tr>
                   <td width="90" class="textWhite">
                       <b>Environment: </b>
                   </td>
                   <td>
                       <span class="textWhite" id="environmentHeader" value="">
                          <xsl:value-of select="//genericReporter/general/testEnvironment"/> - <xsl:value-of select="//genericReporter/general/releaseVersion"/>
                       </span>
                   </td>
               </tr>
           </table>
        </div>
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
      <div id="PageHeading" style="position:absolute; top:20px; left:200px; width:800px; color:white; font-size:24pt; font-family: Arial; text-align: center; filter:shadow(color:#000006, strength:4, direction=220);">Scenario Results</div>
      <br/>
		  <xsl:apply-templates select = "genericReporter"/>
   </body>
</html>
</xsl:template>

<xsl:template name="ResultsSummary">
<BR></BR>
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#666699">
	<tr>
		<td bgcolor="white">
			<div id="theSummaryData" class="FixedTableHead" style="BORDER-RIGHT:#CCCCCC 1px solid; BORDER-TOP:#CCCCCC 1px solid; OVERFLOW:auto; BORDER-LEFT:#CCCCCC 1px solid; WIDTH:100%; BORDER-BOTTOM:#CCCCCC 1px solid; HEIGHT:480px">
        <!--<table id="summaryTable" class="rowover"  style="border-collapse:collapse;" cellpadding="3" cellspacing="0" width="100%" striped="true" selectable="true" skipnlast="0" skipnfirst="2">-->
          <table id ="summaryTable" style="border-collapse:collapse;" cellpadding="3" cellspacing="0" width="100%">
					<!--<table border="0" cellpadding="3" cellspacing="0" width="100%">-->
          <thead>
				    
						<tr bgcolor="gray">
							<td width="5%" valign="middle" align="left"><b> <span class="textWhite">Step </span> </b></td>
							<td width="5%" valign="middle" align="left"><b><span class="textWhite">Status</span></b> </td>
							<td width="40%" valign="middle" align="left"><b><span class="textWhite">Description</span></b> </td>
							<td width="25%" valign="middle" align="left"><b><span class="textWhite">Comments/Timestamp</span></b> </td>
							<td width="25%" valign="middle" align="left"><b><span class="textWhite">Data Table/Steps Number</span></b> </td>
						</tr>
            <tr>
					    <td colspan="5" height="1" class="bg_darkblue"></td>
				    </tr>
				  </thead>
						<xsl:for-each select="//genericReporter/steps/masterStep">
							<tr class="MasterDisplay" bgcolor="#999999" style="BORDER-BOTTOM:#CCCCCC 1px solid;">
								<td valign="middle" align="left" height="20"><span class="textWhite"><b><xsl:value-of select="@number"/></b></span></td>
								<td valign="middle" align="left" height="20"><span class="textWhite"></span></td>
								<td valign="middle" align="left" height="20" colspan="2"><span class="textWhite"><b><xsl:value-of select="@description"/></b></span></td>
								<td valign="middle" align="left" height="20"><span class="textWhite"><b><xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/></b></span></td>
							</tr>
							
								<xsl:for-each select="childSteps/genericStep">
								<!--<tr class="PassedDisplay" style="border-bottom:#CCCCCC 1px solid;">-->
                <xsl:element name="tr">
                  <xsl:attribute name="class"><xsl:value-of select="status"/>edDisplay</xsl:attribute>
									<td style="border-bottom:#CCCCCC 1px solid; padding-left=20px;" valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="@number"/></span></td>
									<td style="border-bottom:#CCCCCC 1px solid;" valign="middle" align="left" height="20" title="Click to display all test steps" class="hand" onclick="ShowHide('All')">
										<xsl:element name="span"><xsl:attribute name="class"><xsl:value-of select="status"/></xsl:attribute>
											<xsl:value-of select="status"/>
										</xsl:element></td>
									<td style="border-bottom:#CCCCCC 1px solid;" valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="@description"/></span></td>
									<!--<td valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="comment"/></span></td>-->
										<!--<xsl:if test="comments[.!='']">-->
                    <xsl:choose>
										<xsl:when test="string-length(comments)>1 and (status='Fail' or status='Known Defect' or status='Missing Data')">
											<!--<td valign="middle" align="left" height="20"><span class="text"></span></td>-->
											<td style="border-bottom:#CCCCCC 1px solid;" valign="middle" align="left" height="20" colspan="2">
												<div align="left" width="100%" class="text">
                            <p><SPAN class="text"><xsl:value-of select="time"/></SPAN></p>  
	                          <p><SPAN class="text"><b>Failure description:</b></SPAN></p>
	                          <FONT face="Verdana" size="2" color="red"><xsl:value-of select="comments"/></FONT>
                            <P>
                              <FONT face="Verdana" size="2" color="blue"><SPAN class="text"><B>Expected Results Were: </B></SPAN></FONT>
                            </P>
                            <FONT face="Verdana" size="2"><textarea style="border:0;width:100%;overflow:auto"><xsl:value-of select="expected"/></textarea></FONT>
                            <P>
                              <FONT face="Verdana" size="2" color="blue"><SPAN class="text"><B>Actual Results Were: </B></SPAN></FONT>
                            </P>
                            <FONT face="Verdana" size="2">
                                <xsl:element name="textarea">
                                    <xsl:choose>
                                        <xsl:when test="(string-length(actual)>50)">
                                            <xsl:attribute name="style">border:0;width:100%;height:150px;overflow:auto</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="style">border:0;width:100%;height:30px;overflow:auto</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                    <xsl:value-of select="actual"/>
                                </xsl:element>
                            </FONT>
                          <P>
                              <FONT face="Verdana" size="2" color="blue"><SPAN class="text"><B>Screenshot: </B></SPAN></FONT>
                          </P>
                          <FONT face="Verdana" size="2">
                              <xsl:element name="a">
                                  <xsl:attribute name="href">
                                      <xsl:value-of select="imageURL"/>
                                  </xsl:attribute>
                                  <xsl:value-of select="imageURL"/>
                              </xsl:element>
                          </FONT>
                          <p><span style="color:gray;"><xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/></span></p>
												</div>
											</td>
										</xsl:when>
                    <xsl:otherwise>
                      <td style="border-bottom:#CCCCCC 1px solid;" valign="middle" align="left" height="20">
                          <p>
                              <SPAN class="text"><xsl:value-of select="time"/></SPAN>
                          </p>
                      </td>
                      <td style="border-bottom:#CCCCCC 1px solid;" valign="middle" align="left" height="20">
                          <p>
                              <span class="text" style="color:gray;"><xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/></span>
                          </p>
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
						<tr>
							<td style="border-bottom:#CCCCCC 1px solid;" class="bg_gray_eee" height="1" colspan="5"></td>
						</tr>
				</table>
      </div> 
		</td>
	</tr>
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
				<td width="100px" valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl">Step Number:</span></td>
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
				<td width="100px" valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl">Step Number:</span></td>
				<td valign="middle" align="left" class="tablehl"><span width="100%" class="tablehl">Action:</span></td>
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
    <center>
    <table border="0" cellpadding="3" cellspacing="0" width="95%">
		<tr><td height="1" class="bg_midblue" colspan="2"></td></tr>
		<tr><td height="30" colspan="2"><p/><span class="hl1name"><xsl:value-of select="//genericReporter/general/scenarioName"/></span>
    <xsl:element name="span">
			<xsl:attribute name="class"><xsl:value-of select="//genericReporter/general/finalRunStatus"/></xsl:attribute>
		</xsl:element>
    </td></tr>
		<tr><td height="2" class="bg_darkblue" colspan="2"></td></tr>
		<tr><td height="20" colspan="2"></td></tr>
		<tr><td width="105px"><span class="text"><b>Results File Path : </b></span></td><td><span class="text"> <xsl:value-of select="//genericReporter/general/resultsFilePath"/></span></td></tr>
		<tr><td><span class="text"><b>Automation Tool : </b></span></td><td><span class="text"> <xsl:value-of select="//genericReporter/general/product"/></span></td></tr>
		<tr><td><span class="text"><b>Result : </b></span></td><td><span><xsl:element name="span">
											<xsl:attribute name="class"><xsl:value-of select="//genericReporter/general/finalRunStatus"/></xsl:attribute>
											<xsl:value-of select="//genericReporter/general/finalRunStatus"/>
										</xsl:element></span></td></tr>
		<tr><td height="15"></td></tr>
	  </table>
  <!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
  
	<table border="0" cellpadding="2" cellspacing="1" width="90%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">
					<table border="0" cellpadding="3" cellspacing="0" width="100%">
						<tr class="tablehl">
							<td title="Click to display all test steps" class="hand" onclick="ShowHide('All')"><span Class="Pass">Passed </span>: <xsl:value-of select="//genericReporter/general/results/@passed"/></td>
							<td title="Click to display only the failed steps" class="hand" onclick="ShowHide('Failed')"><span Class="Fail">Failed </span>: <xsl:value-of select="//genericReporter/general/results/@failed"/></td>
							<td title="Click to display only the Know Defects steps" class="hand" onclick="ShowHide('KnownDefects')"><span Class="Known">Known Defects </span>: <xsl:value-of select="//genericReporter/general/results/@knownDefects"/></td>
							<td title="Click to display only the Missing Data steps" class="hand" onclick="ShowHide('MissingData')"><span Class="Missing">Missing Data </span>: <xsl:value-of select="//genericReporter/general/results/@missingData"/></td>
							<td class="text">Run Date : <xsl:value-of select="//genericReporter/general/dateRun"/></td>
              <td class="text">Run Start : <xsl:value-of select="//genericReporter/general/runStarted"/></td>
              <td class="text">Run End : <xsl:value-of select="//genericReporter/general/runEnded"/></td>
							<td class="text">Run Duration : <xsl:value-of select="//genericReporter/general/totalRunTime"/> minutes</td>
              <td class="text"><b>Host : </b><xsl:value-of select="//genericReporter/general/machineName"/></td>
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

