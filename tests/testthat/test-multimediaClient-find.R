source("setup-vars.R")

context("Testing multimedia find functions")

test_that("find_by_ids() function works", {
  ids <- "RMNH.CRUS.D.17131_0@CRS,L.1454647_0188954023@BRAHMS"
  res <- mc$find_by_ids(ids)
  expect_is(res$content, "list")
  expect_length(res$content, 2)
  for (i in seq_along(res$content)) {
    expect_is(res$content[[i]], "MultiMediaObject")
  }

  id <- "RMNH.CRUS.D.17131_0@CRS"
  res <- mc$find_by_ids(id)
  expect_is(res$content, "list")
  expect_length(res$content, 1)
  expect_is(res$content[[1]], "MultiMediaObject")

  ## check if find_by_ids works with vector instead of string
  ids_vec <- c("RMNH.CRUS.D.17131_0@CRS", "L.1454647_0188954023@BRAHMS")
  res <- mc$find_by_ids(ids_vec)
  expect_is(res$content, "list")
  expect_length(res$content, 2)
  for (i in seq_along(res$content)) {
    expect_is(res$content[[i]], "MultiMediaObject")
  }
})
