library(nbaR)
library(testthat)


wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

testRecord <- file.path(dataDir, 'specimen-2.json')

test_that('fromJSONString works', {
    jsonString <- readChar(testRecord, file.info(testRecord)$size)
    spec <- Specimen$new()
    spec$fromJSONString(jsonString)
    expect_true(class(spec)[1] == 'Specimen')
})

