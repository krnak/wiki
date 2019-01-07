#New Plugin  
1. install java  
2. install jython  
[download link](http://www.jython.org/archive/22/download.html)  
```  
java -jar jython_installer-2.2.1.jar  
set PYTHONPATH=%PYTHONPATH%;C:\Program Files (x86)\Jython\Lib  
```  
```  
Fatal Python error: initfsencoding: unable to load the file system codec  
  File "C:\Program Files (x86)\Jython\Lib\encodings\__init__.py", line 52  
    except ImportError,why:  
                      ^  
SyntaxError: invalid syntax  
  
Fatal Python error: initfsencoding: unable to load the file system codec  
  File "C:\Program Files (x86)\Jython\Lib\encodings\__init__.py", line 70  
    raise CodecRegistryError,\  
                            ^  
SyntaxError: invalid syntax  
  
Fatal Python error: initfsencoding: unable to load the file system codec  
Traceback (most recent call last):  
  File "C:\Program Files (x86)\Jython\Lib\encodings\__init__.py", line 31, in <module>  
  File "C:\Program Files (x86)\Jython\Lib\codecs.py", line 16  
    except ImportError, why:  
                      ^  
SyntaxError: invalid syntax  
```  
  
3. burp/extensions/python env/select jython path