#!/bin/bash
#
#	preprint:
#		https://github.com/jonathansick/preprint
#

preprint --master draft.tex pack submit0 --style aastex --exts eps pdf --maxsize 3.0

eps2pdf.sh "build/submit0/"
pdfclean.sh "build/submit0/"

rm -rf build/submit0/*eps
rm -rf build/submit0/ms.zip
rm -rf build/submit0/ms
zip -j build/submit0/ms.zip build/submit0/*tex build/submit0/*pdf emulateapj.cls apjfonts.sty

#latexdiff archive/draft1.tex draft1.tex > draft1-diff.tex
