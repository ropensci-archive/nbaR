library("nbaR")
library("testthat")

set.seed(111)

context("Testing class AssociatedTaxon")

test_that("Constructor works", {
  obj <- AssociatedTaxon$new()
  expect_is(obj, "AssociatedTaxon")

  # test constructor with random arguments
  # test field name, type character
  obj <- AssociatedTaxon$new(
    name = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "AssociatedTaxon")
  # test field relationType, type character
  obj <- AssociatedTaxon$new(
    relationType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "AssociatedTaxon")
})

test_that("toList works", {
  obj <- AssociatedTaxon$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- AssociatedTaxon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
