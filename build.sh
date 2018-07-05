#!/bin/bash

xelatex -synctex=1 MyThesis &&
bibtex MyThesis &&
xindy -L persian-variant3 -C utf8 -I xindy -M MyThesis.xdy -t MyThesis.glg -o MyThesis.gls MyThesis.glo &&
xindy -L persian-variant3 -C utf8 -I xindy -M MyThesis.xdy -t MyThesis.blg -o MyThesis.bls MyThesis.blo &&
xindy -L english -C utf8 -I xindy -M MyThesis.xdy -t MyThesis.alg -o MyThesis.acr MyThesis.acn &&
makeindex MyThesis &&
xelatex -synctex=1 MyThesis &&
xelatex -synctex=1 MyThesis
