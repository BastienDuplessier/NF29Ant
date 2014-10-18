<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <!-- Root matching -->
  <xsl:template match="module">
    <html>
      <head><title><xsl:value-of select="@name" /></title></head>
      <body>
	<xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <!-- Match code -->
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
      <xsl:variable name="filename" select="@name" />
      <a href="{$filename}.html">
	<xsl:value-of select="document(concat('../src/grains/', $filename, '.xml'))/grain/division/titre" />
      </a>
    </li>
  </xsl:template>

</xsl:stylesheet>
