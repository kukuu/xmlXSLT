<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/TR/REC-html40">

<xsl:output method="html"/>

<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Pineapplesoft Link</TITLE>
</HEAD>
<BODY>
<xsl:apply-templates/>
</BODY>
</HTML>
</xsl:template>

<xsl:template match="section/title">
<P><I><xsl:apply-templates/></I></P>
</xsl:template>

<xsl:template match="article/title">
<P><B><xsl:apply-templates/></B></P>
</xsl:template>

<xsl:template match="url">
<A TARGET="_blank">
<xsl:attribute name="HREF">
<xsl:apply-templates/>
</xsl:attribute>
<xsl:apply-templates/>
</A>
</xsl:template>

<xsl:template match="url[@protocol='mailto']">
<A>
<xsl:attribute name="HREF">mailto:<xsl:apply-templates/>
</xsl:attribute>
<xsl:apply-templates/>
</A>
</xsl:template>

<xsl:template match="p">
<P><xsl:apply-templates/></P>
</xsl:template>