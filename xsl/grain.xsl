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
  <xsl:template match="code">
    <h1>Module : <xsl:value-of select="." /></h1>
  </xsl:template>

  <!-- Match resp -->
  <xsl:template match="responsable">
    <span class="author">Auteur : <xsl:value-of select="." /></span>
  </xsl:template>

  <!-- Match grains -->
  <xsl:template match="grains">
    <ul class="liste_de_grains"><xsl:apply-templates /></ul>
  </xsl:template>

  <!-- Match grain -->
  <xsl:template match="grain">
    <li>
      <a>
	<xsl:attribute name="href"><xsl:value-of select='@name' />.html</xsl:attribute>
	<xsl:value-of select='@name' />
      </a>
    </li>
  </xsl:template>

</xsl:stylesheet>
