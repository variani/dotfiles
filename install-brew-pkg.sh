# Learn more about any package at: http://brewformulas.org/PACKAGE

# Use the latest Homebrew.
brew update

# Upgrade any installed formulas.
brew upgrade

# Install brew auto-update
brew install terminal-notifier
brew tap domt4/autoupdate

brew autoupdate --start --upgrade --cleanup --enable-notification

# Utilities for compiling C code.
brew install cmake
brew install coreutils

# New version of vim
# Note: this installs sqlite, perl, python3
brew install vim 

# Git version control
brew install git
brew install git-lfs

# Convert line endings
brew install dos2unix

# View images quickly
brew install feh

# Convert video files
brew install ffmpeg

# Make and optimize PDF files
brew install ghostscript

# Graphviz makes diagrams of graphs and networks
brew install graphviz

# Convert image file formats, crop, resize
brew install graphicsmagick

# New version of grep
brew install grep

# HDF5 is for storing large datasets for fast retrieval
brew install hdf5

# New version of vim
brew install neovim

# latex formula in Power Point
brew install --cask latexit

# New version of ssh/ssl
brew install openssh

# Convert between document formats: .html .docx .md .pdf
brew install pandoc
brew install pandoc-citeproc

# Parallel gzip
brew install pigz

# SQLite is a lightweight alternative to MySQL
brew install sqlite

# Terminal multiplexer, manage tabs, windows, panes
brew install tmux

# Show the folder structure of a directory
brew install tree

# Show the processes
brew install tree

# Decompress .rar files
brew install unrar

# Keep re-running a command to watch the output
brew install watch

# Alternative to curl, download files from the web
brew install wget

# Compress files very efficiently, but slowly
brew install xz

#####################################################################
# The R-Project for Statistical Computing

# Compiling R takes 5-10 minutes

# Java
brew install --cask java

# OpenBLAS (installs gcc and other dependencies)
brew install openblas

# R language for statistical computing
# brew install r --with-openblas --with-java --with-cairo

# The R version from brew cannot be compiled with cairo.
# So, it may be better to get it from CRAN: https://cloud.r-project.org/bin/macosx/R-3.5.1.pkg

# LaTeX tools like pdflatex
brew install --cask basictex

# Install texlive packages needed to build R package vignettes
sudo tlmgr update --self
sudo tlmgr update --all
sudo tlmgr install titling framed inconsolata
sudo tlmgr install collection-fontsrecommended

# Needed for checks on size reduction of PDFs when developing R packages
brew install qpdf

# Install XQuartz, needed for R package "Cairo"
brew install --cask xquartz

# Needed for R package "RMySQL"
brew install mariadb-connector-c

# Needed for R packages: udunits2, units, ggforce
brew install udunits

# Needed for R other packages
brew install openssl libgit2
