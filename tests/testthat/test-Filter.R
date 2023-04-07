# Make a list with random arguments for all fields in the class
args <- list()
args[["acceptRegexp"]] <- random_string()
args[["rejectRegexp"]] <- random_string()
args[["acceptValues"]] <- random_string_list()
args[["rejectValues"]] <- random_string_list()

# make Filter object without and with args
objEmpty <- Filter$new()
objRand <- do.call(Filter$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Filter")
  expect_s3_class(objRand, "Filter")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Filter$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Filter")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Filter$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Filter")
})

test_that("print works", {
  obj <- Filter$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
