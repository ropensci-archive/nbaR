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
if (!mc$ping()) {
  skip("NBA not available, skipping test")
}

context("Testing multimedia find functions")

test_that("find_by_ids() function works", {
  ids <- "ZMA.MAM.29046_lat@CRS,L.1454647_0188954023@BRAHMS"
  res <- mc$find_by_ids(ids)
  expect_is(res$content, "list")
  expect_length(res$content, 2)
  for (i in seq_along(res$content)) {
    expect_is(res$content[[i]], "MultiMediaObject")
  }

  id <- "ZMA.MAM.29046_lat@CRS"
  res <- mc$find_by_ids(id)
  expect_is(res$content, "list")
  expect_length(res$content, 1)
  expect_is(res$content[[1]], "MultiMediaObject")

  ## check if find_by_ids works with vector instead of string
  ids_vec <- c("ZMA.MAM.29046_lat@CRS", "L.1454647_0188954023@BRAHMS")
  res <- mc$find_by_ids(ids_vec)
  expect_is(res$content, "list")
  expect_length(res$content, 2)
  for (i in seq_along(res$content)) {
    expect_is(res$content[[i]], "MultiMediaObject")
  }
})
