source("setup-vars.R")

context("Testing TaxonClient metadata endpoints")

test_that("getPaths works", {
  res <- tc$get_paths()
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("getFieldInfo works", {
  res <- tc$get_field_info()
  list <- res$content
  expect_is(list, "list")
  ## The list should be named by the paths of the different fields, compare them
  paths <- tc$get_paths()$content
  expect_equal(sort(paths), sort(names(list)))
})

test_that("getSettings works", {
  res <- tc$get_settings()
  expect_is(res$content, "list")
  expect_true(length(res$content) > 0)
})

test_that("getSetting works", {
  res <- tc$get_setting("index.max_result_window")
  expect_true(!is.null(res$content))
})

test_that("isOperatorAllowed works", {
  ## test operator that should be allowed
  res <- tc$is_operator_allowed("synonyms.author", "EQUALS")
  expect_is(res$content, "logical")
  expect_true(res$content)
  ## test operator that should not be allowed
  res <- tc$is_operator_allowed("synonyms.author", "LT")
  expect_is(res$content, "logical")
  expect_true(!res$content)
})
