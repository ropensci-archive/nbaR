# Make a list with random arguments for all fields in the class
args <- list()
args[["agentText"]] <- random_string()
args[["name"]] <- random_string()

# make Organization object without and with args
objEmpty <- Organization$new()
objRand <- do.call(Organization$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Organization")
  expect_s3_class(objRand, "Organization")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Organization$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Organization")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Organization$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Organization")
})

test_that("print works", {
  obj <- Organization$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
