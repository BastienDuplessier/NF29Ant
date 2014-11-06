<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <!-- Root matching -->
  <xsl:template match="grain">
    <html>
      <head><title><xsl:value-of select="@name" /></title></head>
      <body>
	<xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <!-- Match divisions -->
  <xsl:template match="division">
    <div class="division"><xsl:apply-templates /></div>
  </xsl:template>

  <!-- Match titre -->
  <xsl:template match="titre">
    <h1><xsl:value-of select="." /></h1>
  </xsl:template>

  <!-- Match text -->
  <xsl:template match="texte">
    <div class="texte">
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <!-- Match para -->
  <xsl:template match="para">
    <p><xsl:value-of select="." /></p>
  </xsl:template>

  <!-- Match note -->
  <xsl:template match="note">
    <span class="note"><xsl:value-of select="." /></span>
  </xsl:template>

</xsl:stylesheet>
