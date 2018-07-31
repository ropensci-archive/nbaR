library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

test_that("Constructor works", {
  ## constructor with default base path
  ac <- ApiClient$new()
  ## test with other basePath
  ac <- ApiClient$new(basePath = "http://localhost:8080/v2")
})

test_that("CallApi function works", {
  ac <- ApiClient$new()
  res <- ac$callApi("http://api.biodiversitydata.nl/v2", "GET", NULL, NULL, NULL)
  expect_true(res$status_code == 200)
})

test_that("HandleError function works", {
  ac <- ApiClient$new()
  ## make call that produces error
  res <- ac$callApi("http://api.biodiversitydata.nl/v2/unknownendpoint", "GET", NULL, NULL, NULL)
  expect_warning(ac$handleError(res))
})
