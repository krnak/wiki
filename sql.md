## PostgreSQL

[prikazy](https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/how-to-install-postgresql-10-on-ubuntu-18-04-lts.html)

```sh
/usr/lib/postgresql/10/bin/pg_ctl -D /var/lib/postgresql/10/main -l logfile start
sudo systemctl start postgresql
```

## SQL

```sql  
INNER JOIN -- spoji podle klicu (default)  
OUTER JOIN -- prida nesparovane a doplni NULL sloupcema  
JOIN ... ON <podminka>  
JOIN ... USING (<nazev_sloupce>)  
NATURAL JOIN -- vybere pro USING spravny sloupec  
COPY <tablename> {TO|FROM} <filename>  
```

# XMLSQL  
[zdroj](https://www.postgresql.org/docs/9.3/functions-xml.html)  
## Functions  
xmlcomment(text)  
<!--hello-->  
  
xmlconcat('<abc/>', '<bar>foo</bar>')  
<abc/><bar>foo</bar>  
  
xmlelement(  
  name name  
  [, xmlattributes(value [AS attname] [, ... ])]  
  [, content, ...]  
)  
  
xmlelement(  
  name foo,  
  xmlattributes(current_date as bar),   
  'cont', 'ent'  
)  
<foo bar="2007-01-26">content</foo>  
  
xmlforest(content [AS name] [, ...])  
xmlforest('abc' AS foo, 123 AS bar)  
<foo>abc</foo><bar>123</bar>  
  
xmlpi(name php, 'echo "hello world";')  
<?php echo "hello world";?>  
  
xmlroot(  
  xml,  
  version text | no value  
  [, standalone yes|no|no value]  
)  
xmlroot(  
  xmlparse(document '<?xml version="1.1"?><content>abc</content>'),  
  version '1.0',  
  standalone yes  
)  
<?xml version="1.0" standalone="yes"?>  
<content>abc</content>  
  
xmlagg(xml)  
CREATE TABLE test (y int, x xml);  
INSERT INTO test VALUES (1, '<foo>abc</foo>');  
INSERT INTO test VALUES (2, '<bar/>');  
SELECT xmlagg(x) FROM test;  
----------------------  
<foo>abc</foo><bar/>  
  
SELECT xmlagg(x ORDER BY y DESC) FROM test;  
<bar/><foo>abc</foo>  
  
## Predicates  
  
xml IS DOCUMENT # correctect xml syntax  
  
xmlexists(  
  '//town[text() = ''Toronto'']'  
  PASSING BY REF  
  '<towns><town>Toronto</town><town>Ottawa</town></towns>'  
)  
true  
  
## XPath  

[xpath syntax](https://www.w3schools.com/xml/xpath_syntax.asp)
SELECT xpath(  
	'/my/text', /* path */  
	'<my>  
		<text>Prvni</text>  
		<text>Druhe</text>  
	</my>' /* xml */  
)  
{<text>Prvni</text>,<text>Druhe</text>}  

