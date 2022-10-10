

context("Testing class ServiceAccessPoint")

# Make a list with random arguments for all fields in the class
args <- list()
args[["accessUri"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["format"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["variant"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make ServiceAccessPoint object without and with args
objEmpty <- ServiceAccessPoint$new()
objRand <- do.call(ServiceAccessPoint$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "ServiceAccessPoint")
  expect_is(objRand, "ServiceAccessPoint")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- ServiceAccessPoint$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "ServiceAccessPoint")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- ServiceAccessPoint$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "ServiceAccessPoint")
})

test_that("print works", {
  obj <- ServiceAccessPoint$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
