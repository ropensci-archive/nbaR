library(nbaR)
library(testthat)

wd <- getwd()
if(grepl("testthat", wd)) {
    dataDir <- file.path("data")
} else {
    ## for running test at package level
    dataDir <- file.path("tests", "testthat", "data")
}

tc <- TaxonClient$new(basePath = "http://api.biodiversitydata.nl/v2")

context("Testing taxon find functions")

test_that("find function works", {
    id <- "27706109@COL"
    res <- tc$find("27706109@COL")
    expect_is(res$content, "Taxon")
    expect_equal(id, res$content$id)    
})

test_that("findByIds works", {
    ids <- "27706109@COL,27704140@COL,27706110@COL,27706111@COL,27706108@COL"
    res <- tc$find_by_ids(ids)
    expect_is(res$content, "list")
    expect_length(res$content, 5)
    for (i in seq_along(res$content)) {
        expect_is(res$content[[i]], "Taxon")        
    }    
})

test_that("Test error handling in find functions", {    
    id <- "XXX"
    res <- tc$find(id)
    expect_equal(res$response$status_code, 404)
    expect_warning(tc$find(""))    
})
