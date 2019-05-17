source("setup-vars.R")

context("Testing specimen metadata endpoints")

test_that("getSettings works", {
  res <- sc$get_settings()
  expect_is(res$content, "list")
  expect_true(length(res$content) > 0)
})

test_that("getSetting works", {
  res <- sc$get_setting("index.max_result_window")
  ## XXX should a numeric be returned? Right now it is a list, and
  ## with getSettings, one might not know the datatype of the setting!
  ## expect_true(is.numeric(res$content))
  expect_true(!is.null(res$content))
})

test_that("getPaths works", {
  res <- sc$get_paths()
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("getFieldInfo works", {
  res <- sc$get_field_info()
  list <- res$content
  expect_is(list, "list")
  ## The list should be named by the paths of the different fields, compare them
  paths <- sc$get_paths()$content
  expect_equal(sort(paths), sort(names(list)))
})

test_that("isOperatorAllowed works", {
  ## test operator that should be allowed
  res <- sc$is_operator_allowed("collectionType", "EQUALS")
  expect_is(res$content, "logical")
  expect_true(res$content)
  ## test operator that should not be allowed
  res <- sc$is_operator_allowed("collectionType", "LT")
  expect_is(res$content, "logical")
  expect_true(!res$content)
})
