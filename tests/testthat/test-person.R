library(nbaR)
library(testthat)


wd <- getwd()
if(grepl("testthat", wd)) {
    dataDir <- file.path("data")
} else {
    ## for running test at package level
    dataDir <- file.path("tests", "testthat", "data")
}

testRecord <- file.path(dataDir, "person.json")

test_that("fromJSONString works", {
#    jsonString <- readChar(testRecord, file.info(testRecord)$size)
#    per <- Person$new()
#    per$fromJSON(jsonString)
#    expect_true(class(per)[1] == "Person")
})


