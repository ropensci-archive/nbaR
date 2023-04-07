# Make a list with random arguments for all fields in the class
args <- list()
args[["crs"]] <- Crs$new()
args[["bbox"]] <- random_string_list()
args[["coordinates"]] <- random_string_list() # 2Bchanged

# make Polygon object without and with args
objEmpty <- Polygon$new()
objRand <- do.call(Polygon$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Polygon")
  expect_s3_class(objRand, "Polygon")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Polygon$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Polygon")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Polygon$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Polygon")
})

test_that("print works", {
  obj <- Polygon$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
