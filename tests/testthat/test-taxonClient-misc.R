library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

tc <- TaxonClient$new(basePath = "http://api.biodiversitydata.nl/v2")
if (!tc$ping()) {
  skip("NBA not available, skipping test")
}

context("Testing miscellaneous TaxonClient endpoints")

test_that("count works", {
  res <- tc$count()
  expect_is(res$content, "integer")
  expect_true(res$content > 0)
})

test_that("countDistinctValues works", {
  res <- tc$count_distinct_values("acceptedName.author")
  expect_true(res$content > 0)
})

test_that("getDistinctValues works", {
  ## check for all paths
  paths <- tc$get_paths()$content
  for (p in paths) {
    res <- tc$get_distinct_values(p)
    ## check if we get list back
    expect_is(res$content, "list")
  }
  ## method should give a warning if field is not found
  expect_warning(tc$get_distinct_values("XX"))
})
