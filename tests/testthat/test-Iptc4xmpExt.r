library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Iptc4xmpExt")

# Make a list with random arguments for all fields in the class
args <- list()
args[["locationShown"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["worldRegion"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["countryCode"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["countryName"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["provinceState"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["city"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["sublocation"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make Iptc4xmpExt object without and with args
objEmpty <- Iptc4xmpExt$new()
objRand <- do.call(Iptc4xmpExt$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Iptc4xmpExt")
  expect_is(objRand, "Iptc4xmpExt")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Iptc4xmpExt$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Iptc4xmpExt")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Iptc4xmpExt$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Iptc4xmpExt")
})
