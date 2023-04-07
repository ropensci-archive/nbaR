# Make a list with random arguments for all fields in the class
args <- list()
args[["sourceSystem"]] <- SourceSystem$new()
args[["sourceSystemId"]] <- random_string()
args[["recordURI"]] <- random_string()
args[["id"]] <- random_string()
args[["areaType"]] <- random_string()
args[["locality"]] <- random_string()
args[["source"]] <- random_string()
args[["isoCode"]] <- random_string()
args[["countryNL"]] <- random_string()

# make GeoArea object without and with args
objEmpty <- GeoArea$new()
objRand <- do.call(GeoArea$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "GeoArea")
  expect_s3_class(objRand, "GeoArea")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- GeoArea$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "GeoArea")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- GeoArea$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "GeoArea")
})

test_that("print works", {
  obj <- GeoArea$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
