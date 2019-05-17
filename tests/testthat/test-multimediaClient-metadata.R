source("setup-vars.R")

context("Testing multimedia metadata endpoints")

test_that("getPaths works", {
  res <- mc$get_paths()
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("getFieldInfo works", {
  res <- mc$get_field_info()
  list <- res$content
  expect_is(list, "list")
  ## The list should be named by the paths of the different fields, compare them
  paths <- mc$get_paths()$content
  expect_equal(sort(paths), sort(names(list)))
})

test_that("getSettings works", {
  settings <- mc$get_settings()$content
  expect_true(length(settings) > 0)

  for (s in settings) {
    expect_true(!is.null(s))
  }
})

test_that("isOperatorAllowed works", {
  allowed <- mc$is_operator_allowed(
    "identifications.scientificName.fullScientificName",
    "STARTS_WITH"
  )$content
  expect_is(allowed, "logical")
})
