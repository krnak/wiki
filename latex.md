## Instalace

[web](https://gist.github.com/ogajduse/ad4db70f9a6d396a133e6fd68f1a1204)
```sh
sudo apt install texlive texstudio texlive-plain-generic texlive-latex-extra texlive-lang-czechslovak texlive-lang-greek

sudo apt install lmodern
```
## TexStudio

F5 Build and view
F6 Compile
F7 View
F8 Bibliography
F9 Glossary

# Mess
```tex
\usepackage[pdfa]{hyperref}
```
sublime plugin: LatexTools
pdflatex file.tex
[check pdfa](https://www.pdf-online.com/osa/validate.aspx)
apt install xzdec
tlmgr init-usertree
sudo $(which tlmgr) install <package>

## Install Package
[web](http://www.hannahdee.eu/blog/?p=835)
[download from CTAN](http://ctan.org/)
```sh
wget http://mirrors.ctan.org/macros/latex/contrib/$lib.zip
unzip $lib.zip
latex $lib.ins
udo mkdir /usr/share/texmf/tex/latex/$lib
sudo cp $lib.sty /usr/share/texmf/tex/latex/$lib
sudo texhash
```

## Directories

/usr/share/texlive/texmf-dist/tex
/usr/share/texlive/texmf-dist/tex/generic/hyph-utf8/patterns/tex
/usr/share/texlive/texmf-dist/tex/generic/pgf/graphdrawing/tex
/usr/share/texmf/tex
/usr/bin/tex

## PDF/A

sudo mkdir /usr/share/texmf/tex/latex/pdfx
sudo cp * /usr/share/texmf/tex/latex/pdfx
sudo texhash

