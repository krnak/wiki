##Base64
```py
import base64
encoded = base64.b64encode('data to be encoded')
encoded == 'ZGF0YSB0byBiZSBlbmNvZGVk'
data = base64.b64decode(encoded)
data == 'data to be encoded'
```

#ASCII
```py
ord('a') == 97
chr(97) == 'a'
```
