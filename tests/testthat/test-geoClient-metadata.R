source("setup-vars.R")

context("Testing GeoClient metadata endpoints")

test_that("getPaths works", {
  res <- gc$get_paths()
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("getFieldInfo works", {
  res <- gc$get_field_info()
  list <- res$content
  expect_is(list, "list")
  ## The list should be named by the paths of the different fields, compare them
  paths <- gc$get_paths()$content
  expect_equal(sort(paths), sort(names(list)))
})

test_that("GetSettings works", {
  res <- gc$get_settings()
  expect_true(!is.null(res$content))
})

test_that("GetSetting works", {
  for (setting in names(gc$get_settings()$content)) {
    expect_true(!is.null(gc$get_setting(setting)$content))
  }
})

test_that("isOperatorAllowed works", {
  expect_true(gc$is_operator_allowed("locality", "STARTS_WITH")$content)
})
