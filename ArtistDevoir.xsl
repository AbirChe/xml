<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"  />
<xsl:key name = "artist_one" match = "artiste" use = "@no"/>
<xsl:key name = "album_one" match = "album" use = "@reference"/>
<xsl:key name = "artist_two" match = "artiste" use = "@no"/>
<xsl:key name = "album_two" match = "album" use = "@reference"/>


<xsl:template match="/">
<html> 
<head>
  <title>Artist</title>
  <link rel="stylesheet" type="text/css" href="ArtistDevoir.css"/>

</head>
<body>
  <h5>Cette page est realise par les etudiants:</h5>
  <h2>Ma liste d'artistes</h2>

 

  <xsl:for-each select = "key('artist_one', 'a01')">
    <p style="color:red">NOM:&#160;<xsl:value-of select="@nom"/></p>
    <h2>Ville:&#160;<xsl:value-of select="@ville" /></h2>
    <h2>Site:&#160;<a href="{site/@url}"><xsl:value-of select="site/@url"/></a></h2>
  </xsl:for-each>
  <h2>Productions</h2>

  <table border="1">
    
    <xsl:for-each select="key('album_one','firg')">
    <tr>
      <td>NOM Album</td>
      <td><xsl:value-of select="titre"/></td>
    </tr>
    <tr>
      <td>Chanson</td>
      <td>
      <xsl:value-of select="chansons/chanson"/>&#160;
      <xsl:value-of select="chansons/chanson[2]"/>
      </td>
    </tr>
    </xsl:for-each>
  </table><br/>



  <xsl:for-each select = "key('artist_two', 'a03')">
    <h2>NOM:&#160;<xsl:value-of select="@nom"/></h2>
    <h2>Ville:&#160;<xsl:value-of select="@ville" /></h2>
    <h2>Site:&#160;<a href="{site/@url}"><xsl:value-of select="site/@url"/></a></h2>
  </xsl:for-each>
  <h2>Productions</h2>

  <table border="1">
    
    <xsl:for-each select="key('album_two','hash1')">
    <tr>
      <td>NOM Album</td>
      <td><xsl:value-of select="titre"/></td>
    </tr>
    <tr>
      <td>Chanson</td>
      <td>
      <xsl:value-of select="chansons/chanson"/>&#160;
      <xsl:value-of select="chansons/chanson[2]"/>
      </td>
    </tr>
    </xsl:for-each>
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

