library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SummarySourceSystem")

test_that("Constructor works", {
  obj <- SummarySourceSystem$new()
  expect_is(obj, "SummarySourceSystem")

  # test constructor with random arguments
  # test field code, type character
  obj <- SummarySourceSystem$new(
    code = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummarySourceSystem")
})

test_that("toList works", {
  obj <- SummarySourceSystem$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SummarySourceSystem$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
