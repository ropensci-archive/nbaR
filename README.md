[![Build Status](https://travis-ci.org/naturalis/nbaR.svg?branch=master)](https://travis-ci.org/naturalis/nbaR)
[![Coverage Status](https://coveralls.io/repos/github/naturalis/nbaR/badge.svg?branch=master)](https://coveralls.io/github/naturalis/nbaR?branch=master)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)


# R client for the Netherlands Biodiversity API

Access to the digitised Natural History collection at the Naturalis Biodiversity Center

## Overview
Note: parts of this API client have been generated by the [swagger-codegen](https://github.com/swagger-api/swagger-codegen) project.
- API version: v2
- Package version: 0.0.0

## Installation
You'll need the `devtools` package in order to build the API.
Make sure you have a proper CRAN repository from which you can download packages.

### Prerequisites
Install the `devtools` package with the following command.
```R
if(!require(devtools)) { install.packages("devtools") }
```

### Installation of the API package
Make sure you set the working directory to where the client code is located.
Then execute
```R
library(devtools)
install_github("naturalis/nbaR", build_vignettes=T)
```

### Using the package
After installation, the package can be loaded as follows:
```R
library('nbaR')
```

### Documentation
User documentation is provided in the package vignette and can be displayed as follows
```R
vignette('nbaR')
```

## Author
nba@naturalis.nl

