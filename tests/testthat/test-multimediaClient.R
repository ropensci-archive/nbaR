library(nbaR)
library(testthat)

wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

mc <- MultimediaClient$new(basePath="http://api.biodiversitydata.nl/v2")

test_that("Class hierarchy correct", {
    expect_is(mc, "MultimediaClient")
    expect_is(mc, "ApiClient")
})

