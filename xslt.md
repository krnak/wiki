## XML
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!--adding xslt reference link-->
<?xml-stylesheet type="text/xsl" href="cdcatalog.xsl"?>

<catalog>
  <cd>
    <title>Empire Burlesque</title>
    <artist>Bob Dylan</artist>
    <country>USA</country>
    <company>Columbia</company>
    <price>10.90</price>
    <year>1985</year>
  </cd>
.
.
</catalog> 
```
## XSL
```xml
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr>
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <xsl:sort select="artist"/>
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>

</xsl:stylesheet> 
```


`<xsl:template match="/">`  
vyberu tu cast dokumentu, se kterou chci pracovat  
`<xsl:value-of select="catalog/cd/title"/>`  
vyberu JEDNU hodnotu pomoci xpath 
`<xsl:for-each select="catalog/cd">`  
iteruje pres vsechny potomky dane xpath,
vytvori xpath namespace  pro select, if..
`<xsl:sort select="id" data-type="number" order="ascending"/>`  
prida se do for bloku, seradi abecedne vzestupne  
` <xsl:if test="expression">`  
udela podminku
`<xsl:output method='text' encoding='UTF-8'>`
upresny format vystupu
	
`<xsl:variable name="var3" select="neco"/>`
deklaruje promnenou
`<xsl:variable name="var3" select="$var1 + $var2"/>`
neco spocita
```xml
<xsl:variable name="Udalosti" select="doc('udalosti.xml')"/>
<xsl:for-each select="$Udalosti/udalosti/udalost">
```
prace s pridanym dokumentem
`<xsl:include href="cislaInclude.xsl"/>`
pridani sablony

```xml

<xsl:choose>
  <xsl:when test="expression">
    ... some output ...
  </xsl:when>
  <xsl:otherwise>
    ... some output ....
  </xsl:otherwise>
</xsl:choose> 
```
rozdeli na cases

```xml
<panovnik titul="{.}" jmeno="{../../jmeno}" od="{panoval/od}" do="{panoval/do}">
```
xpath v atributech
```xml
<xsl:if test="number(panoval/do) - number(panoval/od)" >
```
jak se neco spocte


## Templates
```xml
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>  
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match="cd">
  <p>
    <xsl:apply-templates select="title"/>  
    <xsl:apply-templates select="artist"/>
  </p>
</xsl:template>

<xsl:template match="title">
  Title: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="artist">
  Artist: <span style="color:#00ff00">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>
```


