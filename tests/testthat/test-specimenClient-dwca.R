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

context("Testing dwca related functions")

test_that("dwca_get_data_set_names() works", {
    res <- sc$dwca_get_data_set_names()
    expect_is(res$content, "character")
    expect_true(length(res$content) > 0)
})

test_that("dwca_get_data_set() works", {

    ## download a dataset to tmp file
    dataset <- "porifera"
    filename <- tempfile(fileext=".zip")
    sc$dwca_get_data_set(dataset, filename=filename)
    expect_true(file.exists(filename))
    unlink(filename)
})

