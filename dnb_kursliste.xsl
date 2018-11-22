<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />
  <xsl:template match="valuta" >
    <html>
      <head>
        <title>Min valutaoversikt</title>
        <link rel="stylesheet" type="text/css" href="project.css"/>
      </head>
      <body>
        <h1>Dagens valutaoversikt</h1>
        <h2>Oppdatert <xsl:value-of select="oppdatert"/></h2>
        <table id="dnb">
          <tr>
            <th>Valuta</th>
            <th>Kode</th>
            <th>Enhet</th>
            <th>Kurs</th>
          </tr>
          <xsl:apply-templates><xsl:sort select="land" /></xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="valutakurs">
    <tr>
      <td><xsl:value-of select="land" /></td>
      <td><xsl:value-of select="kode" /></td>
      <td><xsl:value-of select="enhet" /></td>
      <td><xsl:value-of select="seddel/kjop" /></td>
    </tr>
  </xsl:template>
  <xsl:template match="overskrift" />
  <xsl:template match="oppdatert" />
  <xsl:template match="timestamp" />
  <xsl:template match="data" >
    <html>
      <title>Brønnøysund</title>
      <head>
        <link rel="stylesheet" type="text/css" href="project.css"/>
      </head>
      <body>
        <h1 id="bedrift">Oversikt over bedrifter</h1>
        <table id="brregister">
          <tr>
            <th>Organisasjonsnummer</th>
            <th>Bedriftnavn</th>
            <th>Kommune</th>
            <th>Opprettet</th>
            <th>Beskrivelse</th>
          </tr>
          <xsl:apply-templates><xsl:sort select="navn" /></xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="enhet">
    <tr>
      <td><xsl:value-of select="organisasjonsnummer" /></td>
      <td><xsl:value-of select="navn" /></td>
      <td><xsl:value-of select="forretningsadresse/kommune" /></td>
      <td><xsl:value-of select="registreringsdatoEnhetsregisteret" /></td>
      <td><xsl:value-of select="orgform/beskrivelse" /></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
