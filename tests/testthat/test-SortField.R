# Make a list with random arguments for all fields in the class
args <- list()
args[["sortOrder"]] <- random_string()
args[["ascending"]] <- sample(c(TRUE, FALSE), 1)

# make SortField object without and with args
objEmpty <- SortField$new()
objRand <- do.call(SortField$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "SortField")
  expect_s3_class(objRand, "SortField")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- SortField$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SortField")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- SortField$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SortField")
})

test_that("print works", {
  obj <- SortField$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
