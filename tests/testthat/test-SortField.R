

context("Testing class SortField")

# Make a list with random arguments for all fields in the class
args <- list()
args[["sortOrder"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["ascending"]] <- sample(c(TRUE, FALSE), 1)

# make SortField object without and with args
objEmpty <- SortField$new()
objRand <- do.call(SortField$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "SortField")
  expect_is(objRand, "SortField")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- SortField$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "SortField")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- SortField$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "SortField")
})

test_that("print works", {
  obj <- SortField$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
