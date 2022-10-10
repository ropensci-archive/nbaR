

context("Testing class RestService")

# Make a list with random arguments for all fields in the class
args <- list()
args[["endPoint"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["method"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["consumes"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["produces"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["url"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make RestService object without and with args
objEmpty <- RestService$new()
objRand <- do.call(RestService$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "RestService")
  expect_is(objRand, "RestService")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- RestService$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "RestService")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- RestService$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "RestService")
})

test_that("print works", {
  obj <- RestService$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
