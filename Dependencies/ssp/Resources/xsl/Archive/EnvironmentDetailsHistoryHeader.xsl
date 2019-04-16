<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="sortKey" select="'suite'"/>
	<xsl:param name="sortOrder" select="'ascending'"/>
	<xsl:template match="/">
		<center>
			<xsl:apply-templates select="suiteResults"/>
		</center>
	</xsl:template>
	<xsl:template match="suiteResults">
		<xsl:call-template name="Doc"/>
	</xsl:template>
	<xsl:template name="Doc">
		<xsl:variable name="totalDurationSeconds" select="sum(//suiteResults/test/@runDurationSeconds)"/>
		<xsl:variable name="secondsAsDecimalOfMinute" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60),&quot;.&quot;))"/>
		<xsl:variable name="seconds" select="$secondsAsDecimalOfMinute * 60"/>
		<xsl:variable name="minutesAsDecomalOfHour" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60),&quot;.&quot;))"/>
		<xsl:variable name="minutes" select="$minutesAsDecomalOfHour * 60"/>
		<xsl:variable name="hoursAsDecimalOfDay" select="concat(&quot;0.&quot;,substring-after(string($totalDurationSeconds div 60 div 60 div 24),&quot;.&quot;))"/>
		<xsl:variable name="hours" select="substring-before(string($totalDurationSeconds div 60 div 60),&quot;.&quot;)"/>
		<table border="0" cellpadding="3" cellspacing="0" width="50%">
			<tr><td height="1" class="bg_midblue"></td></tr>
			<tr><td height="30"><p/><span class="hl1name"><b><xsl:value-of select="//suiteResults/@environment"/></b></span><b><span class="hl1" Localizable="True"> Results Summary</span></b></td></tr>
			<tr><td height="2" class="bg_darkblue"></td></tr>
			<tr><td height="20"></td></tr>
		</table>
		<!-- //////////////////////////// Pass Fail Section  ///////////////////////////////// -->
		<table border="0" cellpadding="2" cellspacing="1" width="30%" bgcolor="#666699">
			<tr>
				<td bgcolor="white">
					<table border="0" cellpadding="3" cellspacing="0" width="100%">
						<tr>
							<td width="50%" valign="middle" align="left" class="tablehl"><b>
									<span class="tablehl" Localizable="True">Status </span>
								</b></td>
							<td width="50%" valign="middle" align="left" class="tablehl">
								<b><span class="tablehl" Localizable="True">Times</span></b>
							</td>
						</tr>
						<tr>
							<td width="50%" height="1" class="bg_darkblue"></td><td width="50%" height="1" class="bg_darkblue"></td>
						</tr>
						<tr>
							<td width="50%" valign="middle" align="left" height="20"><b><span class="passed" Localizable="True">Passed</span></b></td>
							<td width="50%" valign="middle" align="left" height="20">
								<span class="text"><xsl:value-of select="count(//suiteResults/test[@status='Pass'])"/></span>
							</td>
						</tr>
						<tr>
							<td width="50%" height="1" class="bg_gray_eee"></td>
							<td width="50%" height="1" class="bg_gray_eee"></td>
						</tr>
						<tr>
							<td width="50%" valign="middle" align="left" height="20"><span class="failed" Localizable="True">Failed</span></td>
							<td width="50%" valign="middle" align="left" height="20">
								<span class="text"><xsl:value-of select="count(//suiteResults/test[@status='Fail'])"/></span>
							</td>
						</tr>
						<tr>
							<td width="50%" height="1" class="bg_darkblue"></td><td width="50%" height="1" class="bg_darkblue"></td>
						</tr>
						<tr>
							<td width="50%" valign="middle" align="left" height="20" class="tablehl" Localizable_bold="True"><b>Total Tests</b></td>
							<td width="50%" valign="middle" align="left" height="20" class="tablehl">
								<xsl:variable name="numberPassed" select="count(//suiteResults/test[@status='Fail'])"/>
								<span class="text"><xsl:value-of select="count(//suiteResults/test[@status='Pass']) + $numberPassed"/>
									<b> - (<xsl:value-of select="floor($hours)"/> Hrs <xsl:value-of select="floor($minutes)"/> Mins <xsl:value-of select="floor($seconds)"/> Secs)</b></span>
							</td>
						</tr>
						<tr>
							<td width="50%" height="1" class="bg_darkblue"></td><td width="50%" height="1" class="bg_darkblue"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
