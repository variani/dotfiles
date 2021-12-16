.First = function() {
  options(
    repos = c(CRAN = "https://cran.rstudio.com/")
  )
}

# custom functions
source = function(...) base::source(..., echo = TRUE)

thead = function(x, n = 2L) 
{
  library(magrittr)
  if(inherits(x, "data.frame")) {
    x %>% head(n) %>% t %>% print
  } else {
    stop("unsupported class")
  }
}

l = function()
{
  pkgs = c("tidyverse", "data.table", 
    "magrittr", "glue", "unglue")
  ret = sapply(pkgs, function(p) suppressMessages(library(p, character.only = TRUE)))
}

is.installed = function(pkg) nzchar(system.file(package = pkg))

if (interactive()) {
  # disable graphical menu, e.g. pop-up for CRAN mirror selection
  options(menu.graphics = FALSE)

  # load favourite packages
  suppressMessages(require(devtools))
  suppressMessages(require(magrittr))
  # suppressMessages(require(rmarkdown))

  # dplyr warnings of dropping group variable, https://stackoverflow.com/a/62140681
  options(dplyr.summarise.inform = FALSE) 

  # set custom R temporary directory
  # https://stackoverflow.com/a/17305169
  # install.packages('unixtools', repos = 'http://www.rforge.net/')
  # if(is.installed("unixtools")) {
  #   unixtools::set.tempdir("~/data/Rtmp/")
  # }
} 
