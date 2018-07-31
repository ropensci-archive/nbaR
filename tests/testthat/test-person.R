library("nbaR")
library("testthat")


wd <- getwd()
if(grepl("testthat", wd)) {
    data_dir <- file.path("data")
} else {
    ## for running test at package level
    data_dir <- file.path("tests", "testthat", "data")
}

testRecord <- file.path(data_dir, "person.json")

test_that("fromJSONString works", {
#    jsonString <- readChar(testRecord, file.info(testRecord)$size)
#    per <- Person$new()
#    per$fromJSON(jsonString)
#    expect_true(class(per)[1] == "Person")
})


