# Make a list with random arguments for all fields in the class
args <- list()
args[["score"]] <- runif(1)

# make QueryResultItemObject object without and with args
objEmpty <- QueryResultItemObject$new()
objRand <- do.call(QueryResultItemObject$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "QueryResultItemObject")
  expect_s3_class(objRand, "QueryResultItemObject")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryResultItemObject$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryResultItemObject")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryResultItemObject$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryResultItemObject")
})

test_that("print works", {
  obj <- QueryResultItemObject$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
