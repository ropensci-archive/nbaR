# Make a list with random arguments for all fields in the class
args <- list()
args[["not"]] <- random_string()
args[["operator"]] <- random_string()
args[["and"]] <- lapply(
  1:sample(1:10, 1),
  function(x) QueryCondition$new()
)
args[["or"]] <- lapply(
  1:sample(1:10, 1),
  function(x) QueryCondition$new()
)
args[["constantScore"]] <- sample(c(TRUE, FALSE), 1)
args[["boost"]] <- runif(1)

# make QueryCondition object without and with args
objEmpty <- QueryCondition$new()
objRand <- do.call(QueryCondition$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "QueryCondition")
  expect_s3_class(objRand, "QueryCondition")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryCondition$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryCondition")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryCondition$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QueryCondition")
})

test_that("print works", {
  obj <- QueryCondition$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
