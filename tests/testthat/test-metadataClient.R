library(nbaR)
library(testthat)

wd <- getwd()
if(grepl("testthat", wd)) {
    dataDir <- file.path("data")
} else {
    ## for running test at package level
    dataDir <- file.path("tests", "testthat", "data")
}

mc <- MetadataClient$new(basePath="http://api.biodiversitydata.nl/v2")

test_that("Class hierarchy correct", {
    expect_is(mc, "MetadataClient")
    expect_is(mc, "ApiClient")
})

test_that("Controlled lists work", {    
    expect_true(length(mc$get_controlled_lists()$content) > 0)
    expect_true(length(mc$get_controlled_list_taxonomic_status()$content) > 0)
    expect_true(length(mc$get_controlled_list_specimen_type_status()$content) > 0)
    expect_true(length(mc$get_controlled_list_sex()$content) > 0)
    expect_true(length(mc$get_controlled_list_phase_or_stage()$content) > 0)
})

test_that("GetAllowedDateFormats works", {
    expect_true(length(mc$get_allowed_date_formats()$content) > 0)
})

test_that("GetRestServices works", {
    res <- mc$get_rest_services()
    for (it in res$content$resultSet) {
        service <- it$item()
        expect_is(item, "RestService")
    }   
})

test_that("Settings work", {
    settings <- mc$get_settings()$content
    expect_true(length(settings) > 1)

    for (s in settings) {
        ss <- mc$get_setting(s)$content
        expect_true(! is.null(ss))
    }    
})
