library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

gc <- GeoClient$new(basePath = "http://api.biodiversitydata.nl/v2")
if (!gc$ping()) {
  skip("NBA not available, skipping test")
}

context("Testing GeoClient query endpoints")

test_that("Query with QuerySpec works", {
  qc <- QueryCondition$new(
    field = "locality", operator = "EQUALS",
    value = "Netherlands"
  )
  qs <- QuerySpec$new(conditions = list(qc))
  res <- gc$query(qs)
  expect_is(res$content$resultSet[[1]]$item, "GeoArea")
})
