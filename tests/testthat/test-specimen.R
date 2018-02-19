
library(nbaR)
library(testthat)

dataDir <- 'data'
testRecord <- file.path(dataDir, 'specimen.json')

#test_that('fromJSONString works', {
#    a <- 1
#})


test_that('fromJSONString works', {
    jsonString <- readChar(testRecord, file.info(testRecord)$size)
    spec <- Specimen$new()$fromJSONString(jsonString)
    #expect_true(class(spec) == 'Specimen')
})

