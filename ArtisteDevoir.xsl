<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
<xsl:output method="html"  />
  
<xsl:key name = "artist_one" match = "artiste" use = "@no"/>
<xsl:key name = "album_one" match = "album" use = "@reference"/>
<xsl:key name = "artist_two" match = "artiste" use = "@no"/>
<xsl:key name = "album_two" match = "album" use = "@reference"/>
<xsl:key name = "artist_three" match = "artiste" use = "@no"/>
<xsl:key name = "album_three" match = "album" use = "@reference"/>
<xsl:key name = "artist_four" match = "artiste" use = "@no"/>
<xsl:key name = "album_four" match = "album" use = "@reference"/>

<xsl:template match="/">
<html> 
<head>
  <title>Artist</title>
 

</head>
<body>
  <h5>Cette page est realise par les etudiants: </h5>
  <h2>Ma liste d'artistes</h2>

 

  <xsl:for-each select = "key('artist_one', 'a01')">
    <h2 style="color:red">NOM:<xsl:value-of select="@nom"/></h2>
    <h2>Ville:<xsl:value-of select="@ville" /></h2>
    <h2>Site:<a href="{site/@url}"><xsl:value-of select="site/@url"/></a></h2>
  </xsl:for-each>
  <h2>Productions</h2>

  <table border="1"   border-color= "green" >
    
    <xsl:for-each select="key('album_one','firg')">
    <tr>
      <td >NOM Album</td>
      <td ><xsl:value-of select="titre"/></td>
    </tr>
    <tr>
      <td >Chanson</td>
      <td >
      <xsl:value-of select="chansons/chanson"/>
      <xsl:value-of select="chansons/chanson[2]"/>
      </td>
    </tr>
    </xsl:for-each>
  </table><br/>



  <xsl:for-each select = "key('artist_two', 'a03')">
    <h2 style="color:red">NOM:<xsl:value-of select="@nom"/></h2>
    <h2>Ville:<xsl:value-of select="@ville" /></h2>
    <h2>Site:<a href="{site/@url}"><xsl:value-of select="site/@url"/></a></h2>
  </xsl:for-each>
  <h2>Productions</h2>

  <table border="1"  >
    <xsl:for-each select="key('album_three','hach1')">
      <tr>
        <td >NOM Album</td>
        <td ><xsl:value-of select="titre"/></td>
      </tr>
      <tr>
        <td >Chanson</td>
        <td >
          <xsl:value-of select="chansons/chanson"/>
          <xsl:value-of select="chansons/chanson[2]"/>
        </td>
      </tr>
    </xsl:for-each>
    
    <xsl:for-each select="key('album_three','hach2')">
      <tr>
        <td >NOM Album</td>
        <td ><xsl:value-of select="titre"/></td>
      </tr>
      <tr>
        <td >Chanson</td>
        <td >
          <xsl:value-of select="chansons/chanson"/>
         
        </td>
      </tr>
    </xsl:for-each>
  </table>
  
  <xsl:for-each select = "key('artist_three', 'a02')">
    <h2 style="color:red">NOM:<xsl:value-of select="@nom"/></h2>
    <h2>Ville:<xsl:value-of select="@ville" /></h2>
    <h2>Site:<a href="{site/@url}"><xsl:value-of select="site/@url"/></a></h2>
  </xsl:for-each>
  <h2>Productions</h2>
  
  <table border="1"  >
    <xsl:for-each select="key('album_three','bina1')">
      <tr>
        <td >NOM Album</td>
        <td ><xsl:value-of select="titre"/></td>
      </tr>
      <tr>
        <td >Chanson</td>
        <td >
          <xsl:value-of select="chansons/chanson"/>
          <xsl:value-of select="chansons/chanson[2]"/>
        </td>
      </tr>
    </xsl:for-each>
    
    <xsl:for-each select="key('album_three','bina2')">
      <tr>
        <td >NOM Album</td>
        <td ><xsl:value-of select="titre"/></td>
      </tr>
      <tr>
        <td >Chanson</td>
        <td >
          <xsl:value-of select="chansons/chanson"/>
          <xsl:value-of select="chansons/chanson[2]"/>
        </td>
      </tr>
    </xsl:for-each>
  </table><br/>
  
  
  
  
  
  <xsl:for-each select = "key('artist_four', 'a04')">
    <h2 style="color:red">NOM:<xsl:value-of select="@nom"/></h2>
    <h2>Ville:<xsl:value-of select="@ville" /></h2>
    <h2>Site:<a href="{site/@url}"><xsl:value-of select="site/@url"/></a></h2>
  </xsl:for-each>
  <h2>Productions</h2>
  
  <table border="1"  >
    
    <xsl:for-each select="key('album_four','idi')">
      <tr>
        <td >NOM Album</td>
        <td ><xsl:value-of select="titre"/></td>
      </tr>
      <tr>
        <td >Chanson</td>
        <td >
          <xsl:value-of select="chansons/chanson"/>
          
        </td>
      </tr>
    </xsl:for-each>
  </table><br/>
  
  
</body>
</html>
</xsl:template>
</xsl:stylesheet>

