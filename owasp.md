#Techniques
-Manual Inspections & Reviews
-Threat Modeling
-Code Review
-Penetration Testing

#Mode
Pasive - looking for access points (gates)
Active - feeding gates

#Tests
##Gathering info
googling
[google hacking db](https://www.exploit-db.com/google-hacking-database/)
ip

`dig +short <URL>`


##Server type
```
$ curl --head google.com
HEAD / HTTP/1.0

HTTP/1.1 200 OK
Date: Mon, 16 Jun 2003 02:53:29 GMT
Server: Apache/1.3.3 (Unix)  (Red Hat/Linux)
Last-Modified: Wed, 07 Oct 1998 11:18:14 GMT
ETag: "1813-49b-361b4df6"
Accept-Ranges: bytes
Content-Length: 1179
Connection: close
Content-Type: text/html
```
##Enumerate Aplications
1. Different base URL
http://www.example.com/url2
2. Non-standard ports
3. Virtual hosts
HTTP 1.1 Host:
```
$ host -t ns www.owasp.org
www.owasp.org is an alias for owasp.org.
owasp.org name server ns1.secure.net.
owasp.org name server ns2.secure.net.
```
web tools

##Input fields
`curl -iL -X OPTIONS http://www.krnak.cz | grep Allow:`


##Read comments
```sh
\/\*[\s\S]*?\*\/|([^\\:]|^)\/\/.*|<!--[\s\S]*?-->$
grep -Pn -C 1 -f reg test.html
```
#Getting interstructure
Burp spider
nikto

##Testing buffer overflow
Test fromat string information leakage
`http://hostname/cgi-bin/query.cgi?name=john%x.%x.%x&code=45765%x.%x`



