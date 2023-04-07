# Make a list with random arguments for all fields in the class
args <- list()
args[["score"]] <- runif(1)

# make QueryResultItem object without and with args
objEmpty <- QueryResultItem$new()
objRand <- do.call(QueryResultItem$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "QueryResultItem")
  expect_s3_class(objRand, "QueryResultItem")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryResultItem$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryResultItem")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryResultItem$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryResultItem")
})

test_that("print works", {
  obj <- QueryResultItem$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
