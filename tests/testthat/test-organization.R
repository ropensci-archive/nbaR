library("nbaR")
library("testthat")


wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else { ## for running test at package level data_dir <-
  file.path("tests", "testthat", "data")
}

testfiles <- c(
  "organization.json", "organization-2.json",
  "empty.json"
)

for (file in testfiles) {
  testRecord <- file.path(data_dir, file)
  json_string <- readChar(testRecord, file.info(testRecord)$size)

  test_that("fromJSONString works", {
    or <- Organization$new()
    or$fromJSONString(json_string)
    expect_true(class(or)[1] == "Organization")
  })

  test_that("toJSONString works", {
    or <- Organization$new()
    or$fromJSONString(json_string)
    outString <- or$toJSONString()

    ## compare by matching the names of list objects
    expect_true(all(sort(names(jsonlite::fromJSON(json_string))) ==
      sort(names(jsonlite::fromJSON(outString)))))
  })

  test_that("fromList works", {
    list <- jsonlite::fromJSON(json_string)
    or <- Organization$new()
    or$fromList(list)
    expect_true(class(or)[1] == "Organization")
  })

  test_that("toList works", {
    or <- Organization$new()
    or$fromJSONString(json_string)
    l <- or$toList()
    expect_true(class(l) == "list")
  })
}
