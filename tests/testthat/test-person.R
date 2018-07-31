library("nbaR")
library("testthat")


wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

testRecord <- file.path(data_dir, "person.json")

test_that("fromJSONString works", {
  #    json_string <- readChar(testRecord, file.info(testRecord)$size)
  #    per <- Person$new()
  #    per$fromJSON(json_string)
  #    expect_true(class(per)[1] == "Person")
})
