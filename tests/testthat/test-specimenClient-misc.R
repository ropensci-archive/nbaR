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


test_that("count() function works", {
    qs <- QuerySpec$new(
        conditions=list(QueryCondition$new(
            field="identifications.defaultClassification.genus",
            operator="EQUALS",
            value="Passiflora"
        )))
    res <- sc$count(querySpec=qs)
    expect_true(is.numeric(res$content))
    expect_true(res$content > 0)

    ## test with queryParams instead of querySpec
    ## test also for empty result
    res <- sc$count(queryParams=list(sourceSystem.code = "XXX"))    
    expect_true(is.numeric(res$content))
    expect_equal(res$content, 0)
})
