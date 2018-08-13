library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Point")

# Make a list with random arguments for all fields in the class
args <- list()
args[["crs"]] <- Crs$new()
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["bbox"]] <- randomList
args[["coordinates"]] <- LngLatAlt$new()

# make Point object without and with args
objEmpty <- Point$new()
objRand <- do.call(Point$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Point")
  expect_is(objRand, "Point")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Point$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Point")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Point$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Point")
})
