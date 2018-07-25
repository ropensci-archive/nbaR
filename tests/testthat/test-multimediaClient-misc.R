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

test_that("getPaths works", {
    res <- mc$get_paths()
    expect_is(res$content, "character")
    expect_true(length(res$content) > 0)    
})

test_that("getFieldInfo works", {
    res <- mc$get_field_info()
    list <- res$content
    expect_is(list, "list")
    ## The list should be named by the paths of the different fields, compare them
    paths <- mc$get_paths()$content
    expect_equal(sort(paths), sort(names(list)))
})

test_that("getDistinctValues works", {
    ## check for all paths
    paths <- mc$get_paths()$content
    ## fielddata not supported for geoShape, remove it
    paths <- paths[paths != "gatheringEvents.siteCoordinates.geoShape"]
    for (p in paths) {
        res <- mc$get_distinct_values(p)
        ## check if we get list back
        expect_is(res$content, "list")        
    }    
    ## method should give a warning if field is not found
    expect_warning(mc$get_distinct_values("XX"))    
})

test_that("count works", {
    res <- mc$count()
    expect_true(is.numeric(res$content))
    expect_true(res$content > 0)    
})

test_that("Settings work", {
    settings <- mc$get_settings()$content
    expect_true(length(settings) > 0)

    for (s in settings) {
        ss <- mc$get_setting(s)$content
        expect_true(! is.null(ss))
    }    
})
