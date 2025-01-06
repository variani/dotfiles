# Convert to img for printing

```
convert -density 200 input.pdf output.pdf
```

Use `magick` instead of `convert` if needed.

# Split by pages & add pwd

## On Ubuntu

pdftk

## On Mac

```
# 1. convert jpg into pdf
brew install imagemagick
convert *.jpg output.pdf

# 2. merge multipel pdfs into one pdf
qpdf --empty --pages *.pdf -- out.pdf

# 3. set a password
qpdf --encrypt <user-password> <owner-password> 128 --use-aes=y -- somefile.pdf somefile_encrypted.pdf
```
