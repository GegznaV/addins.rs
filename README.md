
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![MIT
licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/addins.rs)](https://cran.r-project.org/package=addins.rs)
[![GitHub
version](https://img.shields.io/badge/GitHub-0.0.8-brightgreen.svg)](https://github.com/GegznaV/addins.rs)
[![Travis-CI Build
Status](https://travis-ci.org/GegznaV/addins.rs.png?branch=master)](https://travis-ci.org/GegznaV/addins.rs)
[![Updated-on](https://img.shields.io/badge/Updated%20on-2020--02--26-yellowgreen.svg)](/commits/master)
<!-- [![Research software impact](http://depsy.org/api/package/cran/addins.rs/badge.svg)](http://depsy.org/package/r/addins.rs) -->

<!-- [![Rdoc](http://www.rdocumentation.org/badges/version/addins.rs)](http://www.rdocumentation.org/packages/addins.rs) -->

<!-- badges: end -->

<!--

-->

-----

<!-- <img src="http://gegznav.github.io/addins.rs/logo.png" align="right" width="15%" height="15%"/>  -->

# R package **addins.rs**

Package `addins.rs` is an R package that provides a set of RStudio
add-ins which are designed to be used in combination with user-defined
RStudio keyboard shortcuts. These add-ins:

1.  Insert various R operators, including `%>%`, `<<-`, `%$%`;  
2.  Replace certain symbols (e.g., strings like `"c:\data\"` converted
    into `"c:/data/"`. This can be useful for Windows users);  
3.  Align code at certain symbols.

<!-- 
1) **format text in R Markdown documents**: 
    - **enclose** either selected text or selected rows with special symbols and text gets inerpreted in a special way when rendered with R Markdown (e.g., converts "bold" into "\*\*bold\*\*"
that is interpreted as "**bold**").
2) **insert** text (e.g., operators `%>%`, `<<-`, `%$%`) at the cursor position; 
3)  **replace** symbols in selected
pieces of text (e.g., convert backslashes to forward slashes which results 
in strings like `"c:\data\"` converted into `"c:/data/"`). 
-->

## Install package

<!-- Install released version from CRAN: -->

<!-- ```{r Install package from CRAN, eval=FALSE} -->

<!-- install.packages("addins.rs") -->

<!-- ``` -->

Install development version from GitHub:

``` r
if (!require(remotes)) install.packages("remotes")

remotes::install_github("GegznaV/addin.tools")
remotes::install_github("GegznaV/addins.rs")
```

<!-- Recommended workflow and a few examples -->

<!-- ----------------------------------------------------- -->

<!-- Get started online http://gegznav.github.io/addins.rs/articles/v1_workflow.html -->

<!-- And offline: -->

<!-- ```{r, eval=FALSE} -->

<!-- vignette("v1_workflow", package = "addins.rs") -->

<!-- ``` -->

<!-- browseVignettes("addins.rs") -->

-----

More information at <http://gegznav.github.io/addins.rs/>
