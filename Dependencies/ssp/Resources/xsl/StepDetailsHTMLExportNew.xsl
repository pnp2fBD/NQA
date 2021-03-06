<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<!-- ////////////  Match the document node, HTML, head, scripts  ////////////// -->
<xsl:template match = "/">
  <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
  <HTML lang='en'>
	<HEAD>
      <!--<meta http-equiv="X-UA-Compatible" content="chrome=1, IE=edge"/>-->
    	<title>SSP Test Evidence File</title>
        <STYLE type="text/css">
          .hl1
          {
          COLOR: #669;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 16pt;
          FONT-WEIGHT: bold
          }
          .sectionHeaders
          {
          COLOR: #b00;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 16pt;
          FONT-WEIGHT: bold;
          PADDING-Left: 10px;
          }
          .subSectionHeaders
          {
          COLOR: #b00;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 12pt;
          FONT-WEIGHT: bold;
          PADDING-Left: 15px;
          }
          .hl2
          {
          COLOR: #669;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 13pt;
          FONT-WEIGHT: bold
          }
          .hl3 { color: #666; font-weight: bold; font-size: 10pt; font-family: Calibri; height: 28px }
          .hl1name
          {
          COLOR: #669;
          FONT-FAMILY: Calibri;
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
          { font-size: 10pt; font-family: Calibri }

          .buttonText
          {
          font-size: 10pt;
          color: black;
          font-family: Calibri
          }

          .menuItemWhite
          {
          font-size: 10pt;
          color: white;
          font-family: Calibri;
          padding-top:2px;
          }
          .menuItemWhite:hover
          {
          font-size: 10pt;
          color: white;
          font-family: Calibri;
          font-weight:bold;
          padding-top:2px;
          }
          .menuItemSelected
          {
          font-size: 11pt;
          color: white;
          font-family: Calibri;
          font-weight:bold;
          }

          .textBold
          { font-size: 10pt; font-family: Calibri; FONT-WEIGHT: bold }
          .text_small
          {
          FONT-FAMILY: Calibri;
          FONT-SIZE: 8pt;
          }
          .subSectionSmallText
          {
          FONT-FAMILY: Calibri;
          FONT-SIZE: 8pt;
          padding-left: 20px;
          }
          .text_pitzi
          {
          FONT-FAMILY: Calibri;
          FONT-SIZE: 6.5pt
          }
          .text_bold
          {
          font-size: 10pt;
          FONT-FAMILY: Calibri;
          FONT-WEIGHT: bold
          }
          .textBlueHeader
          {
          COLOR: #669;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }

          .text
          {
          font-size: 10pt;
          font-family: Calibri
          }

          .readOnly
          {  font-size: 10pt;
          color: gray;
          font-family: Calibri;
          readonly: true;
          disabled: true
          }
          .textItalicBlack8
          {   font-size: 8px;
          font-style: italic;
          color: black;
          font-family: Calibri
          }

          .textWhite
          {  font-size: 10pt;
          color: white;
          font-family: Calibri
          }
          .textBlack
          {  font-size: 10pt;
          color: black;
          font-family: Calibri
          }
          .textRed
          {  font-size: 10pt;
          color:#b00;
          font-family: Calibri
          }
          .textRed6
          {  font-size: 6pt;
          color:#b00;
          font-family: Calibri
          }
          .textWhite6
          {  font-size: 6pt;
          color: white;
          font-family: Calibri
          }

          .Failed
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Fail
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .New
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .FailedLow
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }

          .FailedHigh
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 16pt;
          FONT-WEIGHT: bold
          }
          .Passed
          {
          COLOR: #096;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Running
          {
          COLOR: #096;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          /*FONT-WEIGHT: bold*/
          }
          .Complete
          {
          COLOR: #096;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          /*FONT-WEIGHT: bold*/
          }
          .Re-Run
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          /*FONT-WEIGHT: bold*/
          }
          .Loading
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-SIZE:10pt;
          /*FONT-WEIGHT: bold*/
          }
          .Pass
          {
          COLOR: #096;
          FONT-FAMILY: Calibri;
          FONT-SIZE:10pt;
          FONT-WEIGHT: bold
          }
          .Released
          {
          COLOR: #006600;
          FONT-FAMILY: Calibri;
          FONT-SIZE:10pt;
          FONT-WEIGHT: bold
          }
          .Development
          {
          COLOR: purple;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }
          .Not
          {
          COLOR: #0000CC;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }
          .Not .Reproducible
          {
          COLOR: #0000CC;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }
          .No
          {
          COLOR: #666666;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }
          .No .Action
          {
          COLOR: #666666;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }
          .Fixes
          {
          COLOR: #660000;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }
          .Fixes .Ready
          {
          COLOR: #660000;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          }
          .PassedHigh
          {
          COLOR: #096;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 16pt;
          FONT-WEIGHT: bold
          }

          .Done
          {
          COLOR: #999;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Totals
          {
          COLOR: black;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Closed
          {
          COLOR: black;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .DoneHigh
          { color: #999; font-weight: bold; font-size: 16pt; font-family: Calibri }
          .Information
          {
          COLOR: #999;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .InformationHigh
          {
          COLOR: #999;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 16pt;
          FONT-WEIGHT: bold
          }
          .Known
          {
          COLOR: #ff9900;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Known .Defects
          {
          COLOR: #ff9900;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Missing
          {
          COLOR: purple;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Missing .Data
          {
          COLOR: purple;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Scenario
          {
          COLOR: blue;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Scenario .Update
          {
          COLOR: blue;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Existing
          {
          COLOR: orange;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .Existing .KWD
          {
          COLOR: orange;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .knownDefectsHigh
          {
          COLOR: #ff9900;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 16pt;
          FONT-WEIGHT: bold
          }
          .tablehl
          {
          BACKGROUND-COLOR: #eee;
          COLOR: #669;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          LINE-HEIGHT: 14pt
          }
          .tableBackground
          {
          BACKGROUND-COLOR: #eee;
          }
          .tablehlBlack
          {
          BACKGROUND-COLOR: #666666;
          COLOR: 'white';
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          LINE-HEIGHT: 14pt
          }
          .tablehl8pt
          {
          BACKGROUND-COLOR: #eee;
          COLOR: #669;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          LINE-HEIGHT: 10pt
          }
          .tableSmall
          {
          BACKGROUND-COLOR: #eee;
          COLOR: #669;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          LINE-HEIGHT: 14pt
          }
          .tableSmallBlack
          {
          BACKGROUND-COLOR: #eee;
          COLOR: 'black';
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          LINE-HEIGHT: 14pt
          }
          .tableSmallNonBold
          {
          BACKGROUND-COLOR: #eee;
          COLOR: #669;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 7pt;
          LINE-HEIGHT: 14pt
          }
          A
          {
          COLOR: #33f;
          FONT-FAMILY: Calibri
          }
          A:hover
          {
          COLOR: #f03;
          FONT-FAMILY: Calibri;
          FONT-WEIGHT: bold
          }
          .Condition
          {
          COLOR: #333399;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }
          .editText
          {
          font-size: 10pt;
          font-family: Calibri;
          FONT-WEIGHT: bold;
          }
          .editTextRed
          {
          COLOR: #f03;
          font-size: 10pt;
          font-family: Calibri;
          FONT-WEIGHT: bold;
          }
          .BoldGray
          {
          COLOR: Gray;
          font-size: 10pt;
          font-family: Calibri;
          FONT-WEIGHT: bold;
          }
          .dataText
          {
          font-size: 10pt;
          font-family: Calibri;
          }

          .resultsEdit
          {
          font-size: 10pt;
          font-family: Calibri;
          FONT-WEIGHT: bold;
          width:40px;
          height:20px
          }
          body { font-family: Calibri }


          .tooltiptitle{COLOR: #FFFFFF; TEXT-DECORATION: none; CURSOR: Default; font-family: Calibri; font-weight: bold; font-size: 10pt}
          .tooltipcontent{COLOR: #000000; TEXT-DECORATION: none; CURSOR: Default; font-family: Calibri; font-size: 10pt}

          #ToolTip{position:absolute; width: 100px; top: 0px; left: 0px; z-index:4; visibility:hidden;}
          .brake { font-size: 1px; font-family: Calibri; background-color: #366; border-top: 15px solid white; border-bottom: 15px solid white; width: 100%; height: 35px }
          .iteration_border { padding-top: 5px; padding-bottom: 5px; padding-left: 10px; border-top: 3px solid #999; border-bottom: 3px solid #999; border-left: 3px solid #999 }
          .iteration_head { color: white; font-weight: bold; font-size: 12px; font-family: Calibri; background-color: #999; text-align: center; padding: 3px 3px 1px }
          .action_border  { padding-top: 5px; padding-bottom: 5px; padding-left: 10px; border-top: 3px solid #ccc; border-bottom: 3px solid #ccc; border-left: 3px solid #ccc }
          .action_head  { color: black; font-weight: bold; font-size: 12px; font-family: Calibri; background-color: #ccc; text-align: center; padding: 3px 3px 1px }
          .table_frame { padding: 3px; border: solid 1px #669 }
          .table_hl   { color: #669; font-weight: bold; font-size: 10pt; line-height: 14pt; font-family: Calibri; padding-right: 2px; padding-left: 2px; border-top: 1px solid #669; border-bottom: 1px solid #669 }
          .table_cell  { vertical-align: top; padding: 3px; border-bottom: 1px solid #eee; overflow: visible }
          p { font-size: 10pt; font-family: Calibri }
          td { font-size: 10pt; font-family: Calibri }
          ul { font-size: 10pt; font-family: Calibri }
          .rowover{
          behavior:url("rowover.htc");
          }
          .body{
          behavior:url("csshover.htc");
          }
          .filterSmall
          {
          font-size: 8pt;
          font-family: Calibri;
          height:12px;
          WIDTH:60px;
          }
          .filterMed
          {
          font-size: 10pt;
          font-family: Calibri;
          height:12px;
          WIDTH:120px;
          }
          .filterLarge
          {
          font-size: 12pt;
          font-family: Calibri;
          height:12px;
          WIDTH:180px;
          }
          .dropdownSmall
          {
          font-size: 8pt;
          font-family: Calibri;
          height:18px;
          WIDTH:60px;
          }
          .dropdownMed
          {
          font-size: 10pt;
          font-family: Calibri;
          height:18px;
          WIDTH:120px;
          }
          .dropdownLarge
          {
          font-size: 12pt;
          font-family: Calibri;
          height:18px;
          WIDTH:180px;
          }
          .High
          {  font-size: 8pt;
          color: #ff0000;
          font-family: Calibri;
          }
          .Medium
          {  font-size: 8pt;
          color: #ff9900;
          font-family: Calibri;
          }
          .Low
          {  font-size: 8pt;
          color: #009900;
          font-family: Calibri;
          }
          .dropshadow
          {
          width:450px;
          filter:shadow(color:#000006, strength:4, direction=220);
          color:white;
          font-size:24pt;
          text-align: center;
          }
          .gradientSilver
          {
          filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#000000', endColorstr='#666666', gradientType='1');
          }
          .gradientlogo
          {
          position:absolute;
          top:25px;
          left:20px;
          width:130px;
          height:70px;
          border: 1px solid #666;
          -moz-border-radius: 5px;
          -webkit-border-radius: 5px;
          border-radius: 5px;

          }
          .testLogo
          {
          background:
          url('../images/ssp word only.BMP') no-repeat, 0, 0,
          url('../images/sspbackground.png');
          border-radius: 10px;
          height: 70px;
          }
          .gradientRed
          {
          /*background-color: #1a82f7;
          background-image: url(images/fallback-gradient.png);
          background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#2F2727), to(#1a82f7));
          background-image: -webkit-linear-gradient(top right, white, black);
          background-image:    -moz-linear-gradient(top right, white, black);
          background-image:     -ms-linear-gradient(top right, white, black);
          background-image:      -o-linear-gradient(top right, white, black);*/
          filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#ED1C24', startColorstr='white', gradientType='1');
          }
          .gradientBlack
          {
          filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#000000', startColorstr='#ED1C24', gradientType='1');
          }
          .gradientWhiteBlack
          {
          background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(white), to(black));
          background-image: -webkit-linear-gradient(top left, white, black);
          background-image:    -moz-linear-gradient(top left, white, black);
          background-image:     -ms-linear-gradient(top left, white, black);
          background-image:      -o-linear-gradient(top left, white, black);
          filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#000000', startColorstr='white', gradientType='1');
          }
          .gradientBlackWhite
          {
          /*background-image: url(images/fallback-gradient.png);*/
          background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(white), to(black));
          background-image: -webkit-linear-gradient(top right, white, black);
          background-image:    -moz-linear-gradient(top right, white, black);
          background-image:     -ms-linear-gradient(top right, white, black);
          background-image:      -o-linear-gradient(top right, white, black);
          filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='white', startColorstr='#000000', gradientType='1');
          }
          .searchImg
          {
          position:relative;
          left:-70px;
          top:5px;
          }
          .addImg
          {
          position:relative;
          left:0px;
          top:5px;
          }
          .addResourceImg
          {
          position:relative;
          left:0px;
          top:0px;
          }
          /* DIV container around table to constrict the height for IE (IE ignores the tbody height style) */
          div.FixedTableHead {
          overflow-x:hidden;
          overflow-y:auto;

          /* this fixes IE so container width is same as table width */
          /*width: expression( (this.childNodes[0].clientWidth + 24) + 'px' );*/

          /* This fixes IE so the container height is table height plus the height of the header */
          /*height: expression( (parseInt(this.childNodes[0].style.height) + this.childNodes[0].childNodes[1].offsetTop + 1) +'px' );*/
          }
          /* Scrollable Content for multiple browsers */
          .FixedTableHead table tbody {
          height:100%;
          overflow-x:hidden;
          overflow-y:auto;
          }

          .FixedTableHead table tbody tr {
          height: auto;
          white-space: nowrap;
          }

          /* Prevent Mozilla scrollbar from hiding right-most cell content */
          .FixedTableHead table tbody tr td:last-child {
          padding-right: 20px;
          }

          /* Fixed Header */
          /* In WinIE any element with a position property set to relative and is a child of       */
          /* an element that has an overflow property set, the relative value translates into fixed.    */
          /* Ex: parent element DIV with a class of tableContainer has an overflow property set to auto */
          .FixedTableHead table thead tr {
          position: relative;
          height: auto;
          /* this fixes IE header jumping bug when mousing over rows in the tbody */
          top: expression( this.parentNode.parentNode.parentNode.scrollTop + 'px' );
          }

          .tdBorder {
          border-collapse: collapse;
          border-bottom: 1px solid #BABABA;
          vertical-Align: middle;
          text-Align: left;
          height: 20;
          }

          .tdBorderLight {
          border-collapse: collapse;
          border-bottom: 1px solid #E0E0E0;
          vertical-Align: middle;
          text-Align: left;
          height: 20;
          }

          .tdNoBorder {
          vertical-Align: middle;
          text-Align: left;
          height: 20;
          }

          /* Fixed Header */
          /*.FixedTableHead table thead tr td {
          border-bottom:1px solid #000000;
          background-color:white;
          }*/

          .textBlackBold
          {
          COLOR: black;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          padding-right:5px;
          }

          .textGreen
          {
          COLOR: green;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          }

          .textGreen8
          {
          COLOR: green;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 8pt;
          FONT-WEIGHT: bold;
          }

          .textRedBold
          {
          COLOR: #9c0006;
          text-align:center;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          background-color: #E1C7CE;
          padding-right:5px;
          height:100%;
          width:100%;
          display:block;
          }
          .textYellowBold
          {
          COLOR: #9c6500;
          text-align:center;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          background-color: #FFEB9C;
          height:100%;
          width:100%;
          display:block;
          }
          .textGreenBold
          {
          COLOR:  #006400;
          text-align:center;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          background-color: #C6EFCE;
          height:100%;
          width:100%;
          display:block;
          }

          .textGrayBold
          {
          COLOR: white;
          text-align:center;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          background-color: #8C8C8C;
          height:100%;
          width:100%;
          display:block;
          }

          .countGreen
          {
          COLOR: green;
          text-align:center;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 8pt;
          FONT-WEIGHT: bold;
          height:100%;
          width:100%;
          display:block;
          }

          .crossRed
          {
          COLOR: red;
          text-align:center;
          FONT-FAMILY: Wingdings;
          FONT-SIZE: 10pt;
          height:100%;
          width:100%;
          display:block;
          }

          .textRed
          {
          COLOR: #b00;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          padding-right:5px;
          }

          .btnResults
          {
          COLOR: #b00;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          padding-right:5px;
          cursor:pointer;

          }
          .btnResults:hover
          {
          COLOR: black;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold;
          padding-right:5px;
          cursor:pointer;
          }
          .tdBottomBorder
          {
          BORDER-BOTTOM:#CCCCCC 0.5px solid;
          }
          .WindowClass
          {
          COLOR: #0000CC;
          FONT-FAMILY: Calibri;
          FONT-SIZE: 10pt;
          FONT-WEIGHT: bold
          }

          table.coverage {
          border: 1px solid #d7d7d7;
          border-collapse: collapse;
          border-spacing: 0;
          float: left;
          margin:7px;
          /*display:inline-block;
          margin: 0;
          padding: 0;
          empty-cells: show;*/
          }
          table.coverage a, table.coverage :link, table.coverage :visited
          {
          border: none;
          display: inline-block;
          /*width: 100%;*/
          padding: 0;
          text-decoration: none;
          cursor:pointer;
          }
          table.coverage :link:hover {
          color: red;
          cursor:pointer;
          padding:0;
          }
          table.coverage td { background: #fff; padding:0; height: 3px; }
          table.coverage td.new { background: #233A00 }
          table.coverage td.closed { background: #8B0000 }
          table.coverage td.open { background: #8B0000 }
          table.coverage td.covered
          {
          /*background-image: url(images/fallback-gradient.png);*/
          background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(green), to(#E3E3E3));
          background-image: -webkit-linear-gradient(top right, #E3E3E3, green);
          background-image:    -moz-linear-gradient(top right, #E3E3E3, green);
          background-image:     -ms-linear-gradient(top right, #E3E3E3, green);
          background-image:      -o-linear-gradient(top right, #E3E3E3, green);
          filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#E3E3E3', startColorstr='#233A00', gradientType='1');
          }
          table.coverage td.notCovered
          {
          /*background-image: url(images/fallback-gradient.png);*/
          background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#8B0000), to(#E3E3E3));
          background-image: -webkit-linear-gradient(top right, #E3E3E3, #8B0000);
          background-image:    -moz-linear-gradient(top right, #E3E3E3, #8B0000);
          background-image:     -ms-linear-gradient(top right, #E3E3E3, #8B0000);
          background-image:      -o-linear-gradient(top right, #E3E3E3, #8B0000);
          filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#E3E3E3', startColorstr='#B61B1B', gradientType='1');
          }
          table.coverage td.remaining
          {
          background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#8B0000), to(#E3E3E3));
          background-image: -webkit-linear-gradient(top right, #E3E3E3, #8B0000);
          background-image:    -moz-linear-gradient(top right, #E3E3E3, #8B0000);
          background-image:     -ms-linear-gradient(top right, #E3E3E3, #8B0000);
          background-image:      -o-linear-gradient(top right, #E3E3E3, #8B0000);
          filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#E3E3E3', startColorstr='#8A8A8A', gradientType='1');
          }
          table.coverage td :hover { background: none }
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
    </HEAD>
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
</HTML>
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

