# Make a list with random arguments for all fields in the class
args <- list()
args[["accessUri"]] <- random_string()
args[["format"]] <- random_string()
args[["variant"]] <- random_string()

# make ServiceAccessPoint object without and with args
objEmpty <- ServiceAccessPoint$new()
objRand <- do.call(ServiceAccessPoint$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "ServiceAccessPoint")
  expect_s3_class(objRand, "ServiceAccessPoint")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- ServiceAccessPoint$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "ServiceAccessPoint")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- ServiceAccessPoint$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "ServiceAccessPoint")
})

test_that("print works", {
  obj <- ServiceAccessPoint$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
