library("nbaR")
library("testthat")

wd <- getwd()
if(grepl(""testthat"", wd)) {
    data_dir <- file.path("data")
} else {
    ## for running test at package level
    data_dir <- file.path("tests", ""testthat"", "data")
}

mc <- MultimediaClient$new(basePath = "http://api.biodiversitydata.nl/v2")

context("Testing multimedia metadata endpoints")

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

test_that("Settings work", {
    settings <- mc$get_settings()$content
    expect_true(length(settings) > 0)

    for (s in settings) {
        ss <- mc$get_setting(s)$content
        expect_true(! is.null(ss))
    }    
})

test_that("isOperatorAllowed works", {
    allowed <- mc$is_operator_allowed("identifications.scientificName.fullScientificName", "STARTS_WITH")$content
    expect_is(allowed, "logical")    
})
