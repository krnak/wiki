t here](https://regex101.com/)
```py
import re
e = re.compile(r'some re')
e.search(text).group(0) #returns strings
e.match(text) #return object info about positions or None
e.split(text) #split by regex
```
- `.` any char except \n
- `^` start of the line
- `$` end of the line
- `*` 0+ times
- `+` 1+ times
- `?` 0 or 1 times
- `{m}` m times
- `{m, n}` from m up to n times
- `Q?` where Q is a quatifier, is non greedy
- `\` escape special character
- `[]` set
- `reg1|reg2` OR
- `(reg)` group
- `\w` = [a-zA-Z0-9_]
