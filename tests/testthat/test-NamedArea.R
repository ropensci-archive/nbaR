# Make a list with random arguments for all fields in the class
args <- list()
args[["areaClass"]] <- random_string()
args[["areaName"]] <- random_string()

# make NamedArea object without and with args
objEmpty <- NamedArea$new()
objRand <- do.call(NamedArea$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "NamedArea")
  expect_s3_class(objRand, "NamedArea")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- NamedArea$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "NamedArea")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- NamedArea$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "NamedArea")
})

test_that("print works", {
  obj <- NamedArea$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
