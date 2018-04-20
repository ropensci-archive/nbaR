library(nbaR)
library(testthat)

wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

sc <- SpecimenClient$new(basePath="http://api.biodiversitydata.nl/v2")

context("Testing find function")

test_that("Find function works", {    
    id <- "RMNH.MAM.17209.B@CRS"
    res <- sc$find(id)
    expect_is(res$content, "Specimen")
    expect_equal(res$content$id, id)    
})

test_that("Test errors", {    
    id <- "XXX"
    res <- sc$find(id)
    expect_equal(res$response$status_code, 404)
    expect_warning(sc$find(""))    
})

