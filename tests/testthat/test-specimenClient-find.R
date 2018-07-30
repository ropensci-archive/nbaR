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

context("Testing specimen find functions")

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
    expect_length(res$content, 2)
    for (i in seq_along(res$content)) {
        expect_is(res$content[[i]], "Specimen")        
    }
    id <- "RMNH.MAM.17209.B@CRS"
    res <- sc$find_by_ids(id)
    expect_is(res$content, "list")
    expect_length(res$content, 1)
    expect_is(res$content[[1]], "Specimen")

    ## check case that only one of the ids
    ## is found
    id <- "RMNH.MAM.17209.B@CRS,XXXXXX"
    res <- sc$find_by_ids(id)
    expect_is(res$content, "list")
    expect_length(res$content, 1)
    expect_is(res$content[[1]], "Specimen")
})

test_that("find_by_unit_id works", {
    unitID <- "RMNH.MAM.1513"
    res <- sc$find_by_unit_id(unitID)
    ## Endpoint returns array of specimen, check for data type
    expect_is(res$content, "list")
    expect_is(res$content[[1]], "Specimen")
    expect_equal(res$content[[1]]$unitID, unitID)
})

test_that("Test error handling in find functions", {    
    id <- "XXX"
    res <- sc$find(id)
    expect_equal(res$response$status_code, 404)
    expect_warning(sc$find(""))    

    ## find_by_ids and find_by_unitids do not
    ## give a 404, but instead return empty lists, test for that
    res <- sc$find_by_ids(id)
    expect_is(res$content, "list")
    expect_length(sc$content, 0)

    res <- sc$find_by_unit_id(id)
    expect_is(res$content, "list")
    expect_length(sc$content, 0)        
})
