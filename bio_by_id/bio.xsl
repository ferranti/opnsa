<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt">
  
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"/>
  
  <xsl:template match="/">
   <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
      <title>
        <xsl:value-of select="name/@real_name"/>
        </title><meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <meta name="description" content="Anonymous #OpNSA Operation against the unconstitutional surveillance."/>
      <meta name="keywords" content="anonops, nsa, spying, paperstorm, snowden, guardian, anonymous, surveillance, unconstitutional, politicians, IRS, wikileaks, PRISM, xkeyscore, information, about"/>
      <link href="http://fonts.googleapis.com/css?family=Rokkitt" rel="stylesheet" type="text/css"/>
      <!--<script type="text/javascript" src="../js/jquery.js"></script>-->
      <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <link href="../congress.css" rel="stylesheet" type="text/css"/>
      <!-- Fav and touch icons -->
      <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-144-precomposed.png"/>
      <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-114-precomposed.png"/>
      <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-72-precomposed.png"/>
      <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-57-precomposed.png"/>
      <link rel="shortcut icon" href="../img/fav.ico"/>
      <style type="text/css">
        /**/div.c7 {background-image: url(../../img/divbg.png); height: 20px; text-align: center}
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
        span.h222 { font-family: 'Rokkitt', sans-serif; text-shadow:1px 1px 2px rgba(0,0,0,1);font-weight:normal; color:#dda637;letter-spacing:1pt;word-spacing:1pt;font-size:15px; }
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
        } 
        /**/
      </style>
    </head>
    <body>
    <div class="container" style="text-align:center;">
      <p class="c1"/>
      <span>
        <img src="../img/header.png" alt="Logo" style="text-align: center;"/>
      </span>
      <div>
        <a href="https://webchat.anonops.com/?channels=opNsa" class="c2">
          <span class="h5">Talk with us on the AnonOps IRC.</span>
        </a>
      </div>
      <div class="row show-grid span9 c4" title="NavBar">
        <div class="c3">
          <a href="http://www.twitter.com/AnonymousOpNSA">
            <img src="../img/icon-twitter.jpg" alt="TwitterLogo"/>
          </a>
          <a href="http://www.youtube.com/user/AnonymousOpNSA">
            <img src="../img/icon-youtube.jpg" alt="YoutubeLogo"/>
          </a>
        </div>
        <ul class="nav nav-pills">
          <li>
            <a href="../index.html">
              <span class="h222">HOME</span>
            </a>
          </li>
          <li>
            <a href="../113_congress.xml">
              <span class="h222">CONGRESS</span>
            </a>
          </li>
          <li>
            <a href="../videos.html">
              <span class="h222">VIDEOS</span>
            </a>
          </li>
          <li>
            <a href="../paperstorm.html">
              <span class="h222">PAPERSTORM</span>
            </a>
          </li>
          <li>
            <a href="../twitterstorm.html">
              <span class="h222">TWITTERSTORM</span>
            </a>
          </li>
          <li>
            <a href="../graphics.html">
              <span class="h222">GRAPHICS</span>
            </a>
          </li>
          <li>
            <a href="../about.html">
              <span class="h222">ABOUT</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="span9 c5">
        <table width="100%" cellpadding="17" border="1" class="c1">
          <tr>
            <td width="90%" valign="top">
              <p class="c1">
                <span class="h3">
                  <xsl:value-of select="name/@real_name"/>
                </span>
              </p>
            </td>
          </tr>
          <table width="100%" cellpadding="14" border="1" class="c1">
            <tr>
              <td width="33%" style="vertical-align:top">
                <p class="c1">
                  <span class="h3">Contact Information</span>
                </p><hr/>
                <xsl:for-each select="name/addresses/*">
                  <table width="100%" cellpadding="0" border="0">
                    <xsl:choose>
                    <xsl:when test="current()/phone &#61; ' foo '">
                    </xsl:when>
                    <xsl:otherwise>
                    <tr>
                      <td>
                        <p class="c1">
                          <span class="h3">
                            <xsl:value-of select="current()/@name"/>
                          </span>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <p class="c1">
                          <span class="h3">Address:
                            <xsl:value-of select="current()/address"/>
                          </span>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <p class="c1">
                          <span class="h3">Phone:
                            <xsl:value-of select="current()/phone"/>
                          </span>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <p class="c1">
                          <span class="h3">Fax:
                            <xsl:value-of select="current()/fax"/>
                          </span>
                        </p>
                      </td>
                    </tr><hr/>
                  </xsl:otherwise>
                  </xsl:choose>
                  </table>
                </xsl:for-each>
              </td>
              <td width="33%" style="vertical-align:top">
		<table width="100%" cellpadding="14" border="1" class="c1">
		  <tr>
		   <td width="50%">
                <p class="c1">
                  <span class="h3">Online Presence</span>
                </p>
		</td></tr>
                <xsl:for-each select="name/online_presence/*">
		<tr><td>
                  <p class="c1">
                    <span class="h3">
                      <xsl:element name="a">
                        <xsl:attribute name="href">
                          <xsl:value-of select="current()/@url"/>
                        </xsl:attribute>                   
                      <xsl:attribute name="target">
                        <xsl:text>_blank</xsl:text>
                      </xsl:attribute>
                        <xsl:value-of select="current()/@name" />
                      </xsl:element>
                    </span>
                  </p></td></tr>
                </xsl:for-each></table>
              </td>
              <td width="33%" style="vertical-align:top">
                <table width="100%" cellpadding="14" border="1" class="c1">
                  <tr>
                    <td width="50%">
                      <p class="c1">
                        <span class="h3">Demographics</span>
                      </p>
                    </td>
                  </tr>
                  <xsl:for-each select="name/demographics/*">
                    <xsl:sort select="current()/@name" order="ascending" />
                    <tr>
                      <td>
                        <p class="c1">
                          <span class="h3">
                            <xsl:value-of select="current()/@name"/>: 
                            <xsl:value-of select="current()"/>
                          </span>
                        </p>
                      </td>
                    </tr>
                  </xsl:for-each>
		  </table></td>
	      </tr>
	      <tr>
              <td width="33%" style="vertical-align:top">
               <table width="100%" cellpadding="14" border="1" class="c1">
                <tr>
                  <td width="50%">
                    <p class="c1">
                      <span class="h3">Career positions</span>
                    </p>
                    <xsl:for-each select="name/career/*">
                      <p class="c1">
                        <span class="h3">
                          <xsl:value-of select="current()"/>
                        </span>
                      </p>
                    </xsl:for-each>
                  </td>
                </tr>
		</table>
               </td>
              <td width="33%" style="vertical-align:top">
              <table width="100%" cellpadding="14" border="1" class="c1">
              <tr>
                <td width="50%">
                  <p class="c1">
                    <span class="h3">Committees</span>
                  </p>
                  <xsl:for-each select="name/committee_membership/*">
                    <p class="c1">
                      <span class="h3">
                        <xsl:value-of select="current()/oversight_committee"/>
                      </span>
                    </p>
                    <xsl:for-each select="current()/subcommittees/*">
                      <p class="c1">
                        <span class="h3">
                          <xsl:value-of select="current()"/>
                        </span>
                      </p>
                    </xsl:for-each>
                  </xsl:for-each>
                </td>
              </tr>
	      </table>
              </td>
              <td width="33%" style="vertical-align:top">
              <table width="100%" cellpadding="14" border="1" class="c1">
                <tr>
                  <td width="50%">
                    <p class="c1">
                      <span class="h3">Office Staff</span>
                    </p>
                  </td>
                </tr>
                <xsl:for-each select="name/office_staff/*">
                  <tr>
                    <td>
                      <p class="c1">
                        <span class="h3">
                          <xsl:value-of select="current()/@name"/>: 
                          <xsl:value-of select="current()"/>
                        </span>
                      </p>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
             </td>
            </tr>
          </table>
        </table>
       </div>
      </div>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>

