<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<!-- ////////////  Match the document node, HTML, head, scripts  ////////////// -->
<xsl:template match = "/">
<html >
	<head>
    	<title>SSP QTP Test Evidence File</title>
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
        </STYLE>

    </head>
   <body bgcolor="#ffffff" leftmargin="0" marginwidth="20" topmargin="10" marginheight="10" vlink="#9966cc" >
   <center>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
           <tr>
               <td width="5%"></td>
               <td style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#ED1C24', startColorstr='white', gradientType='1')" align="right">

                   <div align="right" style="PADDING-BOTTOM: 7px;PADDING-TOP: 7px; width:450px; color:white; font-size:24pt; font-family: Arial; text-align: center; filter:shadow(color:#000006, strength:4, direction=220);"><xsl:value-of select="genericReporter/general/product"/> Automated Test Steps</div>
               </td>
               <td bgcolor="#ed1c24" style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#000000', startColorstr='#ED1C24', gradientType='1');">
                   <div style="FLOAT:right">
                       <table>
                           <tr>
                               <td width="90" style="font-size: 10pt; color: white; font-family: Arial">
                                   <b>Product: </b>
                               </td>
                               <td>
                                   <span  style="font-size: 10pt; color: white; font-family: Arial">
                                       <xsl:value-of select="genericReporter/general/product"/>
                                   </span>
                               </td>
                           </tr>
                           <tr>
                               <td width="90"  style="font-size: 10pt; color: white; font-family: Arial">
                                   <b>Application: </b>
                               </td>
                               <td>
                                   <span  style="font-size: 10pt; color: white; font-family: Arial" id="applicationRef" value="InsureJ">InsureJ</span>
                               </td>
                           </tr>
                           <tr>
                               <td width="90"  style="font-size: 10pt; color: white; font-family: Arial">
                                   <b>Environment: </b>
                               </td>
                               <td>
                                   <span  style="font-size: 10pt; color: white; font-family: Arial" id="environmentHeader" value="">V_2_2_ZA_INT</span>
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
						<tr>
							<td width="5%" valign="middle" align="left" class="tablehl"><b> <span style="BACKGROUND-COLOR: #eee;COLOR: #669;FONT-FAMILY: Arial;FONT-SIZE: 10pt;FONT-WEIGHT: bold;LINE-HEIGHT: 14pt">Step </span> </b></td>
							<td width="5%" valign="middle" align="left" class="tablehl"><b><span style="BACKGROUND-COLOR: #eee;COLOR: #669;FONT-FAMILY: Arial;FONT-SIZE: 10pt;FONT-WEIGHT: bold;LINE-HEIGHT: 14pt">Status</span></b> </td>
							<td width="40%" valign="middle" align="left" class="tablehl"><b><span style="BACKGROUND-COLOR: #eee;COLOR: #669;FONT-FAMILY: Arial;FONT-SIZE: 10pt;FONT-WEIGHT: bold;LINE-HEIGHT: 14pt">Description</span></b> </td>
							<td width="25%" valign="middle" align="left" class="tablehl"><b><span style="BACKGROUND-COLOR: #eee;COLOR: #669;FONT-FAMILY: Arial;FONT-SIZE: 10pt;FONT-WEIGHT: bold;LINE-HEIGHT: 14pt">Comments/Timestamp</span></b> </td>
							<td width="25%" valign="middle" align="left" class="tablehl"><b><span style="BACKGROUND-COLOR: #eee;COLOR: #669;FONT-FAMILY: Arial;FONT-SIZE: 10pt;FONT-WEIGHT: bold;LINE-HEIGHT: 14pt">ImageURL</span></b> </td>
						</tr>
						<tr>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
							<td height="1" class="bg_darkblue"></td>
						</tr>
						<xsl:for-each select="//genericReporter/steps/masterStep">
							<tr bgcolor="#999999">
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
										<!--<xsl:if test="comments[.!='']">-->
                                    <xsl:choose>
										<xsl:when test="string-length(comments)>1">
											<!--<td valign="middle" align="left" height="20"><span class="text"></span></td>-->
											<td valign="middle" align="left" height="20" colspan="2">
												<div align="left" width="100%" class="text">
                                                  <p><SPAN class="text"><xsl:value-of select="time"/></SPAN></p>  
												  <p><SPAN class="text"><b>Failure description:</b></SPAN></p>
												  <FONT face="Verdana" size="2" color="red"><xsl:value-of select="comments"/></FONT>
                                                  <P>
                                                    <FONT face="Verdana" size="2" color="blue">
                                                      <SPAN class="text">
                                                        <B>Expected Results Were: </B>
                                                      </SPAN>
                                                    </FONT>
                                                  </P>
                                                  <FONT face="Verdana" size="2">
                                                    <textarea style="border:0;width:100%;overflow:auto">
                                                      <xsl:value-of select="expected"/>
                                                    </textarea>
                                                  </FONT>
                                                  <P>
                                                    <FONT face="Verdana" size="2" color="blue">
                                                      <SPAN class="text">
                                                        <B>Actual Results Were: </B>
                                                      </SPAN>
                                                    </FONT>
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
                                                    <FONT face="Verdana" size="2" color="blue">
                                                        <SPAN class="text">
                                                            <B>Screenshot: </B>
                                                        </SPAN>
                                                    </FONT>
                                                </P>
                                                <FONT face="Verdana" size="2">
                                                    <xsl:element name="a">
                                                        <xsl:attribute name="href">
                                                            <xsl:value-of select="imageURL"/>
                                                        </xsl:attribute>
                                                        <xsl:value-of select="imageURL"/>
                                                    </xsl:element>
                                                </FONT>
												</div>
											</td>
										</xsl:when>
                                        <xsl:otherwise>
                                            <td valign="middle" align="left" height="20" colspan="2">
                                                <p>
                                                    <SPAN class="text">
                                                        <xsl:value-of select="time"/>
                                                    </SPAN>
                                                </p>
                                            </td>
                                        </xsl:otherwise>

                                    </xsl:choose>
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
                                    <!--<xsl:if test="imageURL[.!='']">
                                        <tr>
                                            <td colspan="6">
                                                <xsl:element name="img">
                                                    <xsl:attribute name="src">
                                                        <xsl:value-of select="imageURL"/>
                                                    </xsl:attribute>
                                                </xsl:element>
                                            </td>
                                        </tr>
                                    </xsl:if>-->
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

<xsl:template match="genericReporter">
    <xsl:call-template name="Doc"/>
</xsl:template>

<xsl:template name="Doc">

	<table border="0" cellpadding="3" cellspacing="0" width="50%">
		<tr><td height="1" class="bg_midblue"></td></tr>
		<tr><td height="30"><p/><span class="hl1name"><xsl:value-of select="//genericReporter/general/scenarioNumber"/>: <xsl:value-of select="//genericReporter/general/scenarioName"/></span></td></tr>
		<tr><td height="2" class="bg_darkblue"></td></tr>
		<tr><td height="20"></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Scenario: </b> <xsl:value-of select="//genericReporter/general/scenarioNumber"/></span></td></tr>
        <tr><td><span class="text" Localizable_bold="True"><b>Product: </b> <xsl:value-of select="//genericReporter/general/product"/></span></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Results File Path: </b> <xsl:value-of select="//genericReporter/general/resultsFilePath"/></span></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Run started: </b> <xsl:value-of select="//genericReporter/general/runStarted"/></span></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Run ended: </b> <xsl:value-of select="//genericReporter/general/runEnded"/></span></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Total Run Time: </b> <xsl:value-of select="//genericReporter/general/totalRunTime"/></span></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Test Machine: </b> <xsl:value-of select="//genericReporter/general/machineName"/></span></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Test Environment: </b> <xsl:value-of select="//genericReporter/general/testEnvironment"/></span><br/></td></tr>

		<tr><td height="15"></td></tr>
		<tr><td><span class="text" Localizable_bold="True"><b>Result: </b> <xsl:element name="span">
											<xsl:attribute name="class"><xsl:value-of select="//genericReporter/general/finalRunStatus"/></xsl:attribute>
											<xsl:value-of select="//genericReporter/general/finalRunStatus"/>
										</xsl:element></span></td></tr>

		<tr><td height="15"></td></tr>

	</table>
<!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
	<table border="0" cellpadding="2" cellspacing="1" width="50%" bgcolor="#666699">
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
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@passed"/></span>
						</td>
					</tr>
					<tr>
						<td width="50%" height="1" class="bg_gray_eee"></td>
						<td width="50%" height="1" class="bg_gray_eee"></td>
					</tr>
					<tr>
						<td width="50%" valign="middle" align="left" height="20"><span class="failed" Localizable="True">Failed</span></td>
						<td width="50%" valign="middle" align="left" height="20">
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@failed"/></span>
						</td>
					</tr>
					<tr>
						<td width="50%" class="bg_gray_eee" height="1"></td>
						<td width="50%" class="bg_gray_eee" height="1"></td>
					</tr>
					<tr>
						<td width="50%" valign="middle" align="left" height="20"><span class="knownDefects"><span class="text" Localizable_bold="True"><b>Known Defects</b></span></span></td>
						<td width="50%" valign="middle" align="left" height="20">
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@knownDefects"/></span>
						</td>
					</tr>
					<tr>
						<td width="50%" class="bg_gray_eee" height="1"></td>
						<td width="50%" class="bg_gray_eee" height="1"></td>
					</tr>
					<tr>
						<td width="50%" valign="middle" align="left" height="20"><span class="missingData"><span class="text" Localizable_bold="True"><b>Missing Data</b></span></span></td>
						<td width="50%" valign="middle" align="left" height="20">
							<span class="text"><xsl:value-of select="//genericReporter/general/results/@missingData"/></span>
						</td>
					</tr>
					<tr>
						<td width="50%" class="bg_gray_eee" height="1"></td>
						<td width="50%" class="bg_gray_eee" height="1"></td>
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

