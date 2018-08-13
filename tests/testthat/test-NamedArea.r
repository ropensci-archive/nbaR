library("nbaR")
library("testthat")

set.seed(111)

context("Testing class NamedArea")

# Make a list with random arguments for all fields in the class
args <- list()
args[["areaClass"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["areaName"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make NamedArea object without and with args
objEmpty <- NamedArea$new()
objRand <- do.call(NamedArea$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "NamedArea")
  expect_is(objRand, "NamedArea")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- NamedArea$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "NamedArea")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- NamedArea$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "NamedArea")
})
