<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <xsl:output indent="yes"/>
  <xsl:template match = "/">
    <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
    <HTML lang='en'>
      <HEAD>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"/>
        <title>
          <xsl:value-of select="//genericReporter/general/scenarioName"/> - Scenario Evidence
        </title>
        <script language="Javascript" src="../../scripts/js/frameWorkGeneric.js"></script>
        <script src="../../wp-code-prettify/js/prettify.js"></script>
        <link href="../../wp-code-prettify/css/prettify.css" type="text/css" rel="stylesheet" />
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
          document.getElementById("theSummaryData").style.height = (getWindowHeight() - 245) + 'px';
          document.getElementById("theSummaryData").style.width = (getWindowWidth() - 20) + 'px';
          prettyPrint();
          }
          function overflowHide(WSObject){
          document.getElementById(WSObject).style.overflow = 'hidden';
          }
          function ShowHide(type){
          switch (type){
          case "All":
          ChangeCSSClass(".MasterDisplay", "display", "block");
          ChangeCSSClass(".PassedDisplay", "display", "block");
          ChangeCSSClass(".FailedDisplay", "display", "block");
          ChangeCSSClass(".edDisplay", "display", "block");
          ChangeCSSClass(".DefectedDisplay", "display", "block");
          ChangeCSSClass(".DataedDisplay", "display", "block");
          break;
          case "Failed":
          ChangeCSSClass(".MasterDisplay", "display", "none");
          ChangeCSSClass(".PassedDisplay", "display", "none");
          ChangeCSSClass(".FailedDisplay", "display", "block");
          ChangeCSSClass(".edDisplay", "display", "none");
          ChangeCSSClass(".DefectedDisplay", "display", "none");
          ChangeCSSClass(".DataedDisplay", "display", "none");
          break;
          case "KnownDefects":
          ChangeCSSClass(".MasterDisplay", "display", "none");
          ChangeCSSClass(".PassedDisplay", "display", "none");
          ChangeCSSClass(".FailedDisplay", "display", "none");
          ChangeCSSClass(".edDisplay", "display", "none");
          ChangeCSSClass(".DefectedDisplay", "display", "block");
          ChangeCSSClass(".DataedDisplay", "display", "none");
          break;
          case "MissingData":
          ChangeCSSClass(".MasterDisplay", "display", "none");
          ChangeCSSClass(".PassedDisplay", "display", "none");
          ChangeCSSClass(".FailedDisplay", "display", "none");
          ChangeCSSClass(".edDisplay", "display", "none");
          ChangeCSSClass(".DefectedDisplay", "display", "none");
          ChangeCSSClass(".DataedDisplay", "display", "block");
          break;
          case "MasterSteps":
          ChangeCSSClass(".MasterDisplay", "display", "block");
          ChangeCSSClass(".PassedDisplay", "display", "none");
          ChangeCSSClass(".FailedDisplay", "display", "none");
          ChangeCSSClass(".edDisplay", "display", "none");
          ChangeCSSClass(".DefectedDisplay", "display", "none");
          ChangeCSSClass(".DataedDisplay", "display", "none");
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
            <div STYLE="color:White; font-family:Calibri; font-size:12px;">
              (<xsl:value-of select="//genericReporter/general/scenarioID"/>) - <xsl:value-of select="//genericReporter/general/scenarioName"/>
            </div>
          </div>
        </div>
        <div style="float:left; padding-left:10px; padding-bottom:10px; width:98%">
          <xsl:apply-templates select = "genericReporter"/>
          <xsl:call-template name = "WSSummarySection"/>
        </div>
        <xsl:call-template name="ResultsSummary"/>
      </body>
    </HTML>
  </xsl:template>

  <xsl:template name="ResultsSummary">
    <div id="theSummaryData" class="FixedTableHead" style="OVERFLOW:auto; WIDTH:95%; HEIGHT:480px; padding-left:10px;">
      <table id="summaryTable" class="rowover" cellpadding="1" cellspacing="0" width="100%" striped="true" selectable="true" skipnlast="0" skipnfirst="1">
        <thead style="display:block;" bgcolor="#666666">
          <tr>
            <td class="tdBorderHead" style="width:10px; text-align:center;">
              <b>
                <div class="textWhite">Step </div>
              </b>
            </td>
            <td class="tdBorderHead" style="width:40px; text-align:center;">
              <b>
                <div class="textWhite">Status</div>
              </b>
            </td>
            <td class="tdBorderHead" style="text-align:center;">
              <b>
                <div class="textWhite">Description</div>
              </b>
            </td>
            <td class="tdBorderHead" style="text-align:center; width:80px; ">
              <b>
                <div class="textWhite">Comments/Timestamp</div>
              </b>
            </td>
            <td class="tdBorderRightHead" style="text-align:center;">
              <b>
                <div class="textWhite">Data Table/Steps Number</div>
              </b>
            </td>
          </tr>
          </thead>
          <tbody id="container" class="container">
          <xsl:for-each select="//genericReporter/steps/masterStep">
            <tr class="MasterDisplay" bgcolor="#999999">
              <td class="tdBorder" colspan="2">
                <div class="textWhite" style="display:block;"><xsl:value-of select="@number"/></div>
              </td>
              <td class="tdBorder" colspan="2">
                <div class="textWhite" style="display:block; width:inherit; white-space: normal;"><xsl:value-of select="@description"/></div>
              </td>
              <td class="tdBorder">
                <div class="textWhite" style="display:block;"><xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/></div>
              </td>
            </tr>
            <xsl:for-each select="childSteps/genericStep">
              <xsl:element name="tr">
                <xsl:attribute name="style"></xsl:attribute>
                <xsl:attribute name="class"><xsl:value-of select="status"/>edDisplay</xsl:attribute>
                <td class="tdBorder" style="width:40px;">
                  <div class="text_small" style="display:block; width:inherit; white-space: normal;">
                    <xsl:value-of select="@number"/>
                  </div>
                </td>
                <td class="tdBorder" onclick="ShowHide('All')">
                  <xsl:element name="div">
                    <xsl:attribute name="class"><xsl:value-of select="status"/></xsl:attribute>
                    <xsl:value-of select="status"/>
                  </xsl:element>
                </td>
                <xsl:choose>
                  <xsl:when test="string-length(comments)>1 and (status='Fail' or status='Known Defect' or status='Missing Data')">
                    <td class="tdBorder">
                      <div class="text_small" style="display:block; width:inherit; white-space: normal;">
                        <xsl:value-of select="@description"/>
                      </div>
                    </td>
                    <td class="tdBorderRight" colspan="2">
                      <div class="text_small">
                        <div class="text_small">
                          <xsl:value-of select="time"/>
                        </div>
                        <div class="Scenario">Failure description:</div>
                        <div class="textRed">
                          <xsl:value-of select="comments"/>
                        </div>
                        <div class="Scenario">Expected Results Were: </div>
                        <textarea class="text_small" style="border:0;width:650px;overflow:auto">
                          <xsl:value-of select="expected"/>
                        </textarea>
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
                        <div style="color:gray;">
                          <xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/>
                        </div>
                      </div>
                    </td>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="(string-length(services/request)>1 or string-length(services/response)>1)">
                        <td class="tdBorderRight" colspan="4">
                          <div class="text_small">
                            <xsl:element name="a">
                              <xsl:attribute name="name"><xsl:value-of select="services/name"/><xsl:value-of select="services/time"/></xsl:attribute>
                            </xsl:element>
                            <div>
                              <b>Timestamp: </b>
                              <div class="text_black" style="display:inline;">
                                <xsl:value-of select="time"/>
                              </div>
                            </div>
                            <div>
                              <b>Description: </b>
                              <div class="textBlack" style="display:inline;">
                                <xsl:value-of select="@description"/>
                              </div>
                            </div>
                            <div>
                              <b>Service: </b>
                              <div class="textRed" style="display:inline;">
                                <xsl:value-of select="services/name"/>
                              </div>
                            </div>
                            <div>
                              <b>Operation: </b>
                              <div class="textRed" style="display:inline;">
                                <xsl:value-of select="services/operation"/>
                              </div>
                            </div>
                            <xsl:choose>
                              <xsl:when test="(string-length(services/request)>1)">
                                <div>
                                  <b>Request XML: </b>
                                </div>
                                <pre class="prettyprint lang=xml?">
                                  <xsl:value-of select="services/request"/>
                                </pre>
                                <div>
                                  <b>Time:</b>
                                  <div class="textRed" style="display:inline;">
                                    The WS ran in <xsl:value-of select="services/time"/> millisecond.
                                  </div>
                                </div>
                              </xsl:when>
                              <xsl:otherwise>
                                <div>
                                  <b>Response XML: </b>
                                </div>
                                <pre class="prettyprint lang=xml?">
                                  <xsl:value-of select="services/response"/>
                                </pre>
                              </xsl:otherwise>
                            </xsl:choose>
                            <div style="color:gray;">
                              <xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/>
                            </div>
                          </div>
                        </td>
                      </xsl:when>
                      <xsl:otherwise>
                        <td class="tdBorder">
                          <div class="text_small">
                            <xsl:value-of select="@description"/>
                          </div>
                        </td>
                        <td class="tdBorder">
                          <div class="text_small">
                            <xsl:value-of select="time"/>
                          </div>
                        </td>
                        <td class="tdBorderRight">
                          <div class="text_small" style="color:gray;">
                            <xsl:value-of select="dataTable"/> - <xsl:value-of select="dataStepNumber"/>
                          </div>
                        </td>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="comments[.='']">
                  <!--<td style="border-bottom:#CCCCCC 1px solid;" valign="middle" align="left" height="20"><span class="text"><xsl:value-of select="imageURL"/></span></td>-->
                </xsl:if>
                <!--</tr>-->
              </xsl:element>
            </xsl:for-each>
          </xsl:for-each>
        </tbody>
      </table>
    </div>
  </xsl:template>
  <xsl:template match="genericReporter">
    <div style="float:left; border-radius:10px; border:1px solid; background-color:#F0F0F0; border-color:#989898; padding-left:5px; padding-top:5px; padding-bottom:5px;">
      <!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
      <table border=".5" cellpadding="1" cellspacing="0" width="%">
        <tr>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Run Date: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black">
              <xsl:value-of select="//genericReporter/general/dateRun"/>
            </div>
          </td>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Run Duration: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black">
              <xsl:value-of select="//genericReporter/general/totalRunTime"/> minutes (Start: <xsl:value-of select="//genericReporter/general/runStarted"/> End: <xsl:value-of select="//genericReporter/general/runEnded"/>)
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Scheduled By: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black">
              <xsl:value-of select="//genericReporter/general/scheduledBy"/>
            </div>
          </td>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Host: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black">
              <xsl:value-of select="//genericReporter/general/machineName"/>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Run ID: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black" id="currentUser">
              <xsl:value-of select="//genericReporter/general/regressionRunID"/>
            </div>
          </td>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Application: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black">
              <!--<xsl:value-of select="//genericReporter/general/product"/>--> SSP SELECT Insurance
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Environment: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black" id="environmentHeader">
              <xsl:value-of select="//genericReporter/general/testEnvironment"/> (<xsl:value-of select="//genericReporter/general/releaseVersion"/>)
            </div>
          </td>
          <td>
            <div style="width:90px; float:left;" class="BoldGray">Suite: </div>
            <div style="display:inline;cursor:pointer; padding-right:10px;" class="text_small_black" id="environmentHeader">
              <xsl:value-of select="//genericReporter/general/testSuite"/>
            </div>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <div style="width:90px; float:left;" class="BoldGray">Results: </div>
            <div style="float:left; padding-top:1px; padding-right:5px; cursor:pointer;">
              <div style="display:inline;cursor:pointer; padding-right:20px;" title="Click to display all test steps" class="hand" onclick="ShowHide('All')">
                <span Class="Pass">Passed </span>: <span class="text_small">
                  <xsl:value-of select="//genericReporter/general/results/@passed"/>
                </span>
              </div>
              <div style="display:inline;cursor:pointer; padding-right:20px;"  title="Click to display only the failed steps" class="hand" onclick="ShowHide('Failed')">
                <span Class="Fail">Failed </span>: <span class="text_small">
                  <xsl:value-of select="//genericReporter/general/results/@failed"/>
                </span>
              </div>
              <div style="display:inline;cursor:pointer; padding-right:20px;"  title="Click to display only the Know Defects steps" class="hand" onclick="ShowHide('KnownDefects')">
                <span Class="Known">Known Defects </span>: <span class="text_small">
                  <xsl:value-of select="//genericReporter/general/results/@knownDefects"/>
                </span>
              </div>
              <div style="display:inline;cursor:pointer; padding-right:20px;"  title="Click to display only the Missing Data steps" class="hand" onclick="ShowHide('MissingData')">
                <span Class="Missing">Missing Data </span>: <span class="text_small">
                  <xsl:value-of select="//genericReporter/general/results/@missingData"/>
                </span>
              </div>
              <div style="display:inline;cursor:pointer; padding-right:20px;"  title="Click to display only the Missing Data steps" class="hand" onclick="ShowHide('MasterSteps')">
                <span Class="text_small">Master Steps </span></div>
            </div>
          </td>
        </tr>
      </table>
    </div>
  </xsl:template>
  <xsl:template name="WSSummarySection">
    <div style="float:right; padding-right:20px; border-radius:10px; border:1px solid; background-color:#F0F0F0; border-color:#989898; padding-left:5px; padding-top:5px; padding-bottom:5px; display:inline-block;">
      <div class="BoldGray">Web Service Call Summary</div>
      <span id="WSObject" style="height:75px; overflow-y:auto; overflow-x:hidden; padding-right:5px; display:inline-block; width:102%; white-space:nowrap;" onmouseover="overflowHide('WSObject');" >
      <xsl:for-each select="//genericReporter/steps/masterStep">
        <xsl:for-each select="./childSteps/genericStep/services">
          <xsl:choose>
            <xsl:when test="string-length(name)>1 and string-length(response)>1">
              <div>
                <div class="text_small_black" style="display:inline; font-weight:bold">
                  <xsl:element name="a">
                    <xsl:attribute name="href">#<xsl:value-of select="name"/><xsl:value-of select="time"/>
                    </xsl:attribute>
                    <xsl:attribute name="style">display:inline; font-weight:bold</xsl:attribute>
                    <xsl:attribute name="class">text_small_black</xsl:attribute><xsl:value-of select="name"/>
                  </xsl:element> -
                </div>
                <div class="text_small_black" style="display:inline;">
                  <xsl:value-of select="operation"/>
                </div>
                <div class="text_small_red" style="display:inline;">
                  <xsl:value-of select="extraInfo"/> 
                </div>
                <div class="text_small_black" style="display:inline;">
                  (<xsl:value-of select="time"/> ms)
                </div>
              </div>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
      </xsl:for-each>
      </span>
    </div>
  </xsl:template>
</xsl:stylesheet>