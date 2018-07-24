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

context("Testing GeoClient metadata endpoints")

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

test_that("GetSettings works", {
    res <- gc$get_settings()
    expect_true(! is.null(res$content))    
})

test_that("GetSetting works", {
    for (setting in names(gc$get_settings()$content)) {
        expect_true(! is.null(gc$get_setting(setting)$content))
    }
})

test_that("isOperatorAllowed works", {
    expect_true(gc$is_operator_allowed("locality", "STARTS_WITH")$content)
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
        ss <- mc$get_setting(ss)$content
        expect_true(! is.null(ss))
    }    
})
