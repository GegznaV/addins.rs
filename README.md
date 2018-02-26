
<!-- 

TO DO: 

1. Create an interactive addin, that enables to select formatting options;
2. Write unit tests.
3. Insert link [label](link_location)
4. Insert image ![caption](image_location)
5. Insert image with caption (interactive input through Shiny):

fig_id = sub("\\.","_",
             paste0("fig_ID__", (as.double(Sys.time()))))

<img src="image_location" title="The_caption_of_your_figure_comes_here..." alt="The_caption_of_your_figure_comes_here..." style="display: block; margin: auto;" />

6. Write function to check if there is a space before and after the selection
(for %>% and similar operators)

7. Add possibility not to add list bullets and numbers to the empty rows.

-->

<!-- README.md is generated from README.Rmd. Please edit that file -->

[![MIT
licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/addins.rs)](https://cran.r-project.org/package=addins.rs)
[![GitHub
version](https://img.shields.io/badge/GitHub-0.0.1-brightgreen.svg)](https://github.com/GegznaV/addins.rs)
[![Travis-CI Build
Status](https://travis-ci.org/GegznaV/addins.rs.png?branch=master)](https://travis-ci.org/GegznaV/addins.rs)
[![Updated-on](https://img.shields.io/badge/Updated%20on-2018--02--26-yellowgreen.svg)](/commits/master)
<!-- [![Research software impact](http://depsy.org/api/package/cran/addins.rs/badge.svg)](http://depsy.org/package/r/addins.rs) -->

<!-- [![Rdoc](http://www.rdocumentation.org/badges/version/addins.rs)](http://www.rdocumentation.org/packages/addins.rs) -->

<!--

-->

-----

<img src="http://gegznav.github.io/addins.rs/logo.png" align="right" width="15%" height="15%"/>

# R package **addins.rs**

Package `addins.rs` is an R package that provides a set of RStudio
addins which are designed to be used in combination with user-defined
RStudio keyboard shortcuts. These addins:

1)  Insert various R operatiors, including `%>%`, `<<-`, `%$%`;
2)  Replace certain symbols (e.g., strings like `"c:\data\"` converted
    into `"c:/data/"`. This can be useful for Windows users).

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
if (!require(devtools)) 
    install.packages("devtools")

devtools::install_github("GegznaV/addin.tools")
devtools::install_github("GegznaV/addins.rs")
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
