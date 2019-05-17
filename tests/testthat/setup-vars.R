library("nbaR")
library("testthat")

## Specify the data directory
wd <- getwd()
if (grepl("testthat", wd)) {
  ## running test from test directory
  data_dir <- file.path("data")
} else {
  ## running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

## initialise client classes
basePath <- "http://api.biodiversitydata.nl/v2"
ac <- ApiClient$new(basePath = basePath)
sc <- SpecimenClient$new(basePath = basePath)
tc <- TaxonClient$new(basePath = basePath)
mc <- MultimediaClient$new(basePath = basePath)
gc <- GeoClient$new(basePath = basePath)
mdc <- MetadataClient$new(basePath = basePath)

## test if NBA is up and running
if (!ac$ping()) {
  skip("NBA not available, skipping test")
}

## random seed
set.seed(111)
