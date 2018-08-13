library("nbaR")
library("testthat")

set.seed(111)

context("Testing class TaxonDescription")

test_that("Constructor works", {
  obj <- TaxonDescription$new()
  expect_is(obj, "TaxonDescription")

  # test constructor with random arguments
  # test field category, type character
  obj <- TaxonDescription$new(
    category = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "TaxonDescription")
  # test field description, type character
  obj <- TaxonDescription$new(
    description = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "TaxonDescription")
  # test field language, type character
  obj <- TaxonDescription$new(
    language = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "TaxonDescription")
})

test_that("toList works", {
  obj <- TaxonDescription$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- TaxonDescription$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
