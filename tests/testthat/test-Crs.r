library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Crs")

# Make a list with random arguments for all fields in the class
args <- list()
args[["type"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
randomList <- as.list(mapply(
  function(x, y) {
    a <- list()
    a[[x]] <- y
  },
  c("A", "B"), c("a", "b")
))
args[["properties"]] <- randomList

# make Crs object without and with args
objEmpty <- Crs$new()
objRand <- do.call(Crs$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Crs")
  expect_is(objRand, "Crs")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Crs$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Crs")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Crs$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Crs")
})
