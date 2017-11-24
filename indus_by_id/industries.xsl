<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" />
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><xsl:value-of select="name/@real_name"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Anonymous #OpNSA Operation against the unconstitutional surveillance." />
<meta name="keywords" content="anonops, nsa, spying, paperstorm, snowden, guardian, anonymous, surveillance, unconstitutional, politicians, IRS, wikileaks, PRISM, xkeyscore, information, about" />
<link href='http://fonts.googleapis.com/css?family=Rokkitt' rel='stylesheet' type='text/css' />
<!--<script type="text/javascript" src="../js/jquery.js"></script>-->
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="../congress.css" rel="stylesheet" type="text/css" /><!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="../img/fav.ico" />
<style type="text/css">
/*<![CDATA[*/
 div.c7 {background-image: url(../../img/divbg.png); height: 20px; text-align: center}
 div.c6 {background-image: url(../img/divbg.png); height: 20px; text-align: center}
 div.c5 {margin-top:10px}
 div.c4 {background-image: url(../img/divbg-header.png); height: 35px; text-align: center}
 div.c3 {float:right; margin:4px; margin-top:6px}
 a.c2 {text-decoration: none}
 p.c1 {text-align:center;}
 table.c1 {background-image: url(../img/divbg.png); height:35px; text-align:center}
 body {
      padding-top: 20px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
 body {
      background: url(../img/BG.jpg) no-repeat;
      background-size: 100%;
      background-attachment:fixed;
      background-color:#000
      } 
 span.h2 { font-family: 'Rokkitt', sans-serif; text-shadow:1px 1px 2px rgba(0,0,0,1);font-weight:normal;color:#E07B22;letter-spacing:3pt;word-spacing:2pt;font-size:17px; }
 span.h22 { font-family: 'Rokkitt', sans-serif; text-shadow:1px 1px 2px rgba(0,0,0,1);font-weight:normal; color:#ffcc66;letter-spacing:3pt;word-spacing:2pt;font-size:15px; }
 span.h222 { font-family: 'Rokkitt', sans-serif; text-shadow:1px 1px 2px rgba(0,0,0,1);font-weight:normal; color:#dda637;letter-spacing:1pt;word-spacing:1pt;font-size:15px; text-align:center; }
 span.h3 { font-family: 'Rokkitt', sans-serif; color:#FFF; font-weight:100; letter-spacing:0.5pt }
 span.h44 { font-family: 'Rokkitt', sans-serif; text-shadow:1px 1px 2px rgba(0,0,0,1);font-weight:normal; color:#fff;letter-spacing:1pt;word-spacing:1pt;font-size:14px; }
 span.h5 { font-family: 'Rokkitt', sans-serif; color:#FFF; font-weight:100; font-size:15px }
 .block1 {width:550px; position: relative;}
 .block2 {
	width: 550px;
	position: absolute;
	top: 0px;
	left: 0px;
	margin: 15px;
	margin-left: 25px
        } 
 .block3 {
	width: 300px;
	position: absolute;
	top: 20px;
	left: 584px;
	margin: 15px;
	margin-left: 25px
        } 
/*]]>*/
</style>
</head>
<body>
<div class="container" style="text-align:center;">
<p class="c1"></p>
<span><img src="../img/header.png" alt="Logo" style="text-align: center;" /></span> 
<div><a href="https://webchat.anonops.com/?channels=opNsa" class="c2"><span class="h5">Talk with us on the AnonOps IRC.</span></a></div>
<div class="row show-grid span9 c4" title="NavBar">
<div class="c3"><a href="http://www.twitter.com/AnonymousOpNSA"><img src="../img/icon-twitter.jpg" alt="TwitterLogo" /></a> <a href="http://www.youtube.com/user/AnonymousOpNSA"><img src="../img/icon-youtube.jpg" alt="YoutubeLogo" /></a></div>
<ul class="nav nav-pills">
<li><a href="../index.html"><span class="h222">HOME</span></a></li>
<li><a href="../113_congress.xml"><span class="h222">CONGRESS</span></a></li>
<li><a href="../videos.html"><span class="h222">VIDEOS</span></a></li>
<li><a href="../paperstorm.html"><span class="h222">PAPERSTORM</span></a></li>
<li><a href="../twitterstorm.html"><span class="h222">TWITTERSTORM</span></a></li>
<li><a href="../graphics.html"><span class="h222">GRAPHICS</span></a></li>
<li><a href="../about.html"><span class="h222">ABOUT</span></a></li>
</ul>
</div>
<div class="span9 c5" >
<table class="c1" width="100%" border="1" cellpadding="17" >
<tr>
<td valign="top" width="90%">
<p class="c1"><span class="h3"><xsl:value-of select="name/@real_name"/></span></p>
</td>
</tr>
</table>
<table class="c1" width="100%" border="1" cellpadding="14" >
<td width="10%">
<p class="c1"><span class="h3"><xsl:text>Year</xsl:text></span></p>
</td>
<td width="60%">
 <p class="c1"><span class="h3">
 <xsl:text>Select a year:</xsl:text>
  <xsl:for-each select="name/year">
    <xsl:sort select="@year" order="descending"/>
    <xsl:element name="a">
      <xsl:attribute name="href"><xsl:value-of select="concat('#', @year)"/></xsl:attribute>
      <xsl:attribute name="style"><xsl:text>color: #F1F9F9</xsl:text></xsl:attribute>
      <xsl:text>  </xsl:text><xsl:value-of select="@year"/>
    </xsl:element>
  </xsl:for-each>
 </span></p>
</td>
<td width="30%">
<p class="c1"><span class="h3"><a href="#total_career" style="color: #F1F9F9">View Career Total</a></span></p>
</td>
</table>
<xsl:for-each select="name/year">
   <xsl:sort select="@year" order="descending"/>
<xsl:choose>
<xsl:when test="total_industries &#61; '$0'">
  </xsl:when>
<xsl:otherwise>
<table class="c1" width="100%" border=".5" cellpadding="17" >
<tr>
<td valign="middle" width="10%">
<p class="c1"><span class="h3">
    <xsl:value-of select="@year"/>
</span></p>
</td>
<table width="100%" border="1" cellpadding="10" >
<td width="60%">
<p class="c1"><span class="h3">
  <xsl:element name="a">
    <xsl:attribute name="name">
      <xsl:value-of select="@year"/>
    </xsl:attribute>
  </xsl:element>
<xsl:text>Industry</xsl:text></span></p>
</td>
<td width="30%">
<p class="c1"><span class="h3"><xsl:text>Amount</xsl:text></span></p>
</td>
<xsl:for-each select="industries/*">
  <xsl:sort select="translate(translate(current(),'$',''), ',', '')" data-type="number" order="descending"/>
<tr>
  <xsl:choose>
    <xsl:when test="current() &#61; 'foo'">
    </xsl:when>
    <xsl:otherwise>
      <td><span class="h44"><xsl:value-of select="current()/@name"/></span></td>
      <td><span class="h44"><xsl:value-of select="current()"/></span></td>
    </xsl:otherwise>
  </xsl:choose>
</tr>
</xsl:for-each>
<tr>
  <td><span class="h222"><xsl:text>Total</xsl:text></span></td>
  <td><span class="h222"><xsl:value-of select="total_industries"/></span></td>
</tr>
</table>
</tr>
</table>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
<table class="c1" width="100%" border="1" cellpadding="17" >
<a name="total_career"></a>
<tr>
<td>
<p class="c1"><span class="h222">Total for career</span></p>
</td>
<td>
<p class="c1"><span class="h222"><xsl:value-of select="name/total_industries_all"/></span></p>
</td>
</tr>
</table>
</div>
<!--BREAK-->
<div class="c5"></div>
<!--BREAK-->
<div class="row show-grid span9 c5" title=""><span class="h3">Unless otherwise mentioned, all records courtesy of the fellows at the <a href="http://www.fec.gov/" target="_blank">Federal Election Commission</a> Many thanks</span></div>
<div class="row show-grid span9 c7" title=""><span class="h3">Special thanks to the <a href="https://www.anonops.com" target="_blank">AnonOps</a> Network</span></div>
</div>
<!-- /container -->
<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!--<script type="text/javascript" src="../js/jquery.js"></script>-->
</body>
</html>
</xsl:template>
</xsl:stylesheet>
