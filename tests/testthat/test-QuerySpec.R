# Make a list with random arguments for all fields in the class
args <- list()
args[["constantScore"]] <- sample(c(TRUE, FALSE), 1)
args[["fields"]] <- random_string_list()
args[["conditions"]] <- lapply(
  1:sample(1:10, 1),
  function(x) QueryCondition$new()
)
args[["logicalOperator"]] <- random_string()
args[["sortFields"]] <- lapply(
  1:sample(1:10, 1),
  function(x) SortField$new()
)
args[["from"]] <- sample(0:10, 1)
args[["size"]] <- sample(0:10, 1)

# make QuerySpec object without and with args
objEmpty <- QuerySpec$new()
objRand <- do.call(QuerySpec$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "QuerySpec")
  expect_s3_class(objRand, "QuerySpec")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QuerySpec$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QuerySpec")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QuerySpec$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "QuerySpec")
})

test_that("print works", {
  obj <- QuerySpec$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
