library("nbaR")
library("testthat")

set.seed(111)

context("Testing class AssociatedTaxon")

# Make a list with random arguments for all fields in the class
args <- list()
args[["name"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["relationType"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make AssociatedTaxon object without and with args
objEmpty <- AssociatedTaxon$new()
objRand <- do.call(AssociatedTaxon$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "AssociatedTaxon")
  expect_is(objRand, "AssociatedTaxon")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- AssociatedTaxon$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "AssociatedTaxon")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- AssociatedTaxon$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "AssociatedTaxon")
})
