library(nbaR)
library(testthat)

wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

sc <- SpecimenClient$new()

context("Testing miscellaneous specimen endpoints")

test_that("exists() function works", {
    ## test for existing specimen
    res <- sc$exists("L.4191428")
    expect_is(res$content, "logical")
    expect_true(res$content)

    ## test for nonexisting specimen
    res <- sc$exists("XXX")
    expect_is(res$content, "logical")
    expect_false(res$content)        
})
