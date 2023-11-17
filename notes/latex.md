# Install

## Install Latex on Ubuntu

```
sudo apt-get install -y texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
sudo apt-get install -y texlive-science
```

## Install Latex on MacOS

https://daniel.feldroy.com/posts/setting-up-latex-on-mac-os-x

## tlmgr

https://tex.stackexchange.com/questions/5085/how-to-install-a-latex-package-in-macos-texlive

```
tlmgr update --self
tlmgr update --all
tlmgr install <package name>
```

# Make PDFs

`latexmk` works better than combination `pdflatex` + `bibtex`, as it can determine if `bibtex` should be run or not. Otherwise, an error “no \citation commands”.

# VS Code, LaTeX Workshop

https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop

## Latex recipes

https://github.com/James-Yu/LaTeX-Workshop/wiki/Compile#latex-recipes

> To edit recipes you should go on the Code Tab (from the name of the program, Visual Studio Code), then Preferences, and from there Settings. > Open the tree for the Extension settings and you will find your LaTeX (Workshop) settings. Click on "Edit in settings.json" and you will see > the file opened for your edits.
Source: https://tex.stackexchange.com/a/497947
