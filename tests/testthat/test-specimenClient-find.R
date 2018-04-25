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

test_that("find() function works", {    
    id <- "RMNH.MAM.17209.B@CRS"
    res <- sc$find(id)
    expect_is(res$content, "Specimen")
    expect_equal(res$content$id, id)    
})

test_that("find_by_ids() function works", {
    ids <- "RMNH.INS.657083@CRS,L.1589244@BRAHMS"
    res <- sc$find_by_ids(ids)
    expect_is(res$content, "list")
    expect_true(length(res$content) == 2)
    for (i in seq_along(res$content)) {
        expect_is(res$content[[i]], "Specimen")        
    }
    id <- "RMNH.MAM.17209.B@CRS"
    res <- sc$find_by_ids(ids)
    expect_is(res$content, "list")
    expect_true(length(res$content) == 2)
    expect_is(res$content[[1]], "Specimen")
})

test_that("Test error handling in find functions", {    
    id <- "XXX"
    res <- sc$find(id)
    expect_equal(res$response$status_code, 404)
    expect_warning(sc$find(""))    
})
