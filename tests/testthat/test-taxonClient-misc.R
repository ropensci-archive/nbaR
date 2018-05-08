library(nbaR)
library(testthat)

wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

tc <- TaxonClient$new(basePath="http://api.biodiversitydata.nl/v2")

context("Testing miscellaneous TaxonClient endpoints")

test_that("getPaths works", {
    res <- tc$get_paths()
    expect_is(res$content, "character")
    expect_true(length(res$content) > 0)    
})

test_that("getFieldInfo works", {
    res <- tc$get_field_info()
    list <- res$content
    expect_is(list, "list")
    ## The list should be named by the paths of the different fields, compare them
    paths <- tc$get_paths()$content
    expect_equal(sort(paths), sort(names(list)))
})

test_that("getDistinctValues works", {
    ## check for all paths
    paths <- tc$get_paths()$content
    for (p in paths) {
        res <- tc$get_distinct_values(p)
        ## check if we get list back
        expect_is(res$content, "list")        
    }    
    ## method should give a warning if field is not found
    expect_warning(tc$get_distinct_values("XX"))    
})
