## Select pages

```py
# pdf_splitter.py

import os
from PyPDF2 import PdfFileReader, PdfFileWriter

path = 'C:/Users/HP/Downloads/parvathy.pdf'
fname = os.path.splitext(os.path.basename(path))[0]

pdf = PdfFileReader(path)
pdf_writer = PdfFileWriter()
for page_number in [33,34,35]: # pdf.getNumPages()
	pdf_writer.addPage(pdf.getPage(page_number - 1))

with open(fname+"_cut.pdf", 'wb') as out:
	pdf_writer.write(out)
```
