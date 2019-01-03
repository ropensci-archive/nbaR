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

context("Testing taxon find functions")

test_that("find function works", {
  id <- "AHCYFBRDJBG@NSR"
  res <- tc$find(id)
  expect_is(res$content, "Taxon")
  expect_equal(id, res$content$id)
})

test_that("findByIds works", {
  ids <- "42131338@COL,42131574@COL,42131573@COL"
  res <- tc$find_by_ids(ids)
  expect_is(res$content, "list")
  expect_length(res$content, 3)
  for (i in seq_along(res$content)) {
    expect_is(res$content[[i]], "Taxon")
  }
})

test_that("Test error handling in find functions", {
  id <- "XXX"
  res <- tc$find(id)
  expect_equal(res$response$status_code, 404)
  expect_warning(tc$find(""))
})
