library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Person")

# Make a list with random arguments for all fields in the class
args <- list()
args[["agentText"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["fullName"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["organization"]] <- Organization$new()

# make Person object without and with args
objEmpty <- Person$new()
objRand <- do.call(Person$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Person")
  expect_is(objRand, "Person")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Person$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Person")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Person$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Person")
})
