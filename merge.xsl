<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"
doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" />

<xsl:template match="/">
  <Container>
    <xsl:copy-of select="document('fec.xml')"/>
    <xsl:copy-of select="document('113_congress.xml')"/>
  </Container>
 </xsl:template>
</xsl:stylesheet>
