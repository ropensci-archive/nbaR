library(nbaR)
library(testthat)

wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

gc <- GeoClient$new(basePath="http://api.biodiversitydata.nl/v2")

context("Testing miscellaneous GeoClient endpoints")

test_that("count works", {    
    res <- gc$count()
    expect_is(res$content, "integer")
    expect_true(res$content > 0)
})

test_that("getPaths works", {
    res <- gc$get_paths()
    expect_is(res$content, "character")
    expect_true(length(res$content) > 0)    
})

test_that("getFieldInfo works", {
    res <- gc$get_field_info()
    list <- res$content
    expect_is(list, "list")
    ## The list should be named by the paths of the different fields, compare them
    paths <- gc$get_paths()$content
    expect_equal(sort(paths), sort(names(list)))
})

test_that("getDistinctValues works", {
    ## check for all paths
    paths <- gc$get_paths()$content
    ## fielddata not supported for all fields, remove them
    paths <- paths[paths != "shape"]
    for (p in paths) {
        res <- gc$get_distinct_values(p)
        ## check if we get list back
        expect_is(res$content, "list")        
    }    
    ## method should give a warning if field is not found
    expect_warning(gc$get_distinct_values("XX"))    
})

test_that("getGeoJsonForLocality works", {
    loc <- "Netherlands"
    res <- gc$get_geo_json_for_locality(loc)
    expect_is(res$content, "list")        
})
