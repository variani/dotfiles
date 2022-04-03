## On Ubuntu

pdftk

## On Mac

```
# 1. convert jpg into pdf
brew install imagemagick
convert *.jpg output.pdf

# 2. merge multipel pdfs into one pdf
qpdf --empty --pages *.pdf -- out.pdf
```
