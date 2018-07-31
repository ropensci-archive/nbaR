library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

mc <- MultimediaClient$new(basePath = "http://api.biodiversitydata.nl/v2")

context("Testing miscellaneous multimedia endpoints")

test_that("count works", {
  res <- mc$count()
  expect_true(is.numeric(res$content))
  expect_true(res$content > 0)
})

test_that("getDistinctValues works", {
  ## check for all paths
  paths <- mc$get_paths()$content
  ## fielddata not supported for geoShape, remove it
  paths <- paths[paths != "gatheringEvents.siteCoordinates.geoShape"]
  for (p in paths) {
    res <- mc$get_distinct_values(p)
    ## check if we get list back
    expect_is(res$content, "list")
  }
  ## method should give a warning if field is not found
  expect_warning(mc$get_distinct_values("XX"))
})
