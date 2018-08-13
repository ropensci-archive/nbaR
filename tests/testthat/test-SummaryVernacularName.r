library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SummaryVernacularName")

test_that("Constructor works", {
  obj <- SummaryVernacularName$new()
  expect_is(obj, "SummaryVernacularName")

  # test constructor with random arguments
  # test field name, type character
  obj <- SummaryVernacularName$new(
    name = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryVernacularName")
  # test field language, type character
  obj <- SummaryVernacularName$new(
    language = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryVernacularName")
})

test_that("toList works", {
  obj <- SummaryVernacularName$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SummaryVernacularName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
