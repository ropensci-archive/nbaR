library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SummarySourceSystem")

# Make a list with random arguments for all fields in the class
args <- list()
args[["code"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make SummarySourceSystem object without and with args
objEmpty <- SummarySourceSystem$new()
objRand <- do.call(SummarySourceSystem$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "SummarySourceSystem")
  expect_is(objRand, "SummarySourceSystem")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- SummarySourceSystem$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "SummarySourceSystem")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- SummarySourceSystem$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "SummarySourceSystem")
})
