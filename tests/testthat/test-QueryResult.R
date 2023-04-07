# Make a list with random arguments for all fields in the class
args <- list()
args[["totalSize"]] <- runif(1)
args[["resultSet"]] <- lapply(
  1:sample(1:10, 1),
  function(x) QueryResultItemObject$new()
)

# make QueryResult object without and with args
objEmpty <- QueryResult$new()
objRand <- do.call(QueryResult$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "QueryResult")
  expect_s3_class(objRand, "QueryResult")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryResult$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryResult")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryResult$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryResult")
})

test_that("print works", {
  obj <- QueryResult$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
