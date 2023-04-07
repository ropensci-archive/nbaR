# Make a list with random arguments for all fields in the class
args <- list()
args[["longitudeDecimal"]] <- runif(1)
args[["latitudeDecimal"]] <- runif(1)
args[["gridCellSystem"]] <- random_string()
args[["gridLatitudeDecimal"]] <- runif(1)
args[["gridLongitudeDecimal"]] <- runif(1)
args[["gridCellCode"]] <- random_string()
args[["gridQualifier"]] <- random_string()
args[["geoShape"]] <- Point$new()

# make GatheringSiteCoordinates object without and with args
objEmpty <- GatheringSiteCoordinates$new()
objRand <- do.call(GatheringSiteCoordinates$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "GatheringSiteCoordinates")
  expect_s3_class(objRand, "GatheringSiteCoordinates")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- GatheringSiteCoordinates$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "GatheringSiteCoordinates")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- GatheringSiteCoordinates$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "GatheringSiteCoordinates")
})

test_that("print works", {
  obj <- GatheringSiteCoordinates$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
