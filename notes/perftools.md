# gperftools

https://github.com/gperftools/gperftools

Example for Rcpp: http://minimallysufficient.github.io/r/programming/c++/2018/02/16/profiling-rcpp-packages.html

## Install on Ubuntu

```bash
git clone https://github.com/gperftools/gperftools.git
cd gperftools/
```

Make `configure` work if `./configure` command gives errors. 
https://askubuntu.com/a/27679

```bash
 libtoolize --force
aclocal
autoheader
automake --force-missing --add-missing
autoconf
./configure
```

```bash
make
sudo make install
```

Update the index of shared libraries.


```bash
sudo /sbin/ldconfig
```

## Install on iOS

```bash
brew install gperftools
```

See also https://stackoverflow.com/questions/67034132/gperftools-not-installing-lprofiler-on-mac-after-installing-it-with-brew
