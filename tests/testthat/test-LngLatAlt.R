# Make a list with random arguments for all fields in the class
args <- list()
args[["longitude"]] <- runif(1)
args[["latitude"]] <- runif(1)
args[["altitude"]] <- runif(1)
args[["additionalElements"]] <- random_string_list()

# make LngLatAlt object without and with args
objEmpty <- LngLatAlt$new()
objRand <- do.call(LngLatAlt$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "LngLatAlt")
  expect_s3_class(objRand, "LngLatAlt")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- LngLatAlt$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "LngLatAlt")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- LngLatAlt$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "LngLatAlt")
})

test_that("print works", {
  obj <- LngLatAlt$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
