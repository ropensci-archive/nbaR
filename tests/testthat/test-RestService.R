# Make a list with random arguments for all fields in the class
args <- list()
args[["endPoint"]] <- random_string()
args[["method"]] <- random_string()
args[["consumes"]] <- random_string_list()
args[["produces"]] <- random_string_list()
args[["url"]] <- random_string()

# make RestService object without and with args
objEmpty <- RestService$new()
objRand <- do.call(RestService$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "RestService")
  expect_s3_class(objRand, "RestService")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- RestService$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "RestService")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- RestService$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "RestService")
})
