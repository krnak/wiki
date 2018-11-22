# Regular expressions
 #regex #pyregex #re
[test here](https://regex101.com/)
```python
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

# Base64
```python
import base64
encoded = base64.b64encode('data to be encoded')
encoded == 'ZGF0YSB0byBiZSBlbmNvZGVk'
data = base64.b64decode(encoded)
data == 'data to be encoded'
```

# ASCII
```python
ord('a') == 97
chr(97) == 'a'
```

# Shell
 #bash #cmd #sh
```python
>>> import subprocess
>>> result = subprocess.run(['ls', '-l'], stdout=subprocess.PIPE)
>>> result.stdout
b'total 0\n-rw-r--r--  1 memyself  staff  0 Mar 14 11:04 files\n'
>>> result.stdout.decode('utf-8')
'total 0\n-rw-r--r--  1 memyself  staff  0 Mar 14 11:04 files\n'
```

# Modules
ctypes #built-in, c extensions

pyglet
PIL - Pillow
pyinstaller
openpyxl
modernize
python-docx
lxml - http://www.lfd.uci.edu/~gohlke/pythonlibs/#lxml
mammoth - docx to html
requests
statistics
uuid #generate unique number
plotly
numpy #matrix
rsa
pyopenssl
feedparser #rss feed reader
json
pickle
dis

selenium #headless browser

pyqt5 --> pyqt4 through .whl file
Ghost.py #headless browser

pybox2d
-------
conda -- https://conda.io/miniconda.html
swig -- c/c++ + another languages -- needed -- http://www.swig.org/download.html
visual tools -- http://landinghub.visualstudio.com/visual-cpp-build-tools
bug -- https://stackoverflow.com/questions/14372706/visual-studio-cant-build-due-to-rc-exe
pyBox2D -- https://github.com/pybox2d/pybox2d/blob/master/INSTALL.md

# Flask
 #web #serverside
```python
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"
```
```sh
pip install Flask
FLASK_APP=hello.py flask run
 * Running on http://localhost:5000/
```
