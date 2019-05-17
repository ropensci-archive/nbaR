

context("Testing class QueryCondition")

# Make a list with random arguments for all fields in the class
args <- list()
args[["not"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["operator"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) QueryCondition$new()
)
args[["and"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) QueryCondition$new()
)
args[["or"]] <- randomList
args[["constantScore"]] <- sample(c(TRUE, FALSE), 1)
args[["boost"]] <- runif(1)

# make QueryCondition object without and with args
objEmpty <- QueryCondition$new()
objRand <- do.call(QueryCondition$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "QueryCondition")
  expect_is(objRand, "QueryCondition")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryCondition$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryCondition")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryCondition$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryCondition")
})

test_that("print works", {
  obj <- QueryCondition$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
