# Make a list with random arguments for all fields in the class
args <- list()
args[["locationShown"]] <- random_string()
args[["worldRegion"]] <- random_string()
args[["countryCode"]] <- random_string()
args[["countryName"]] <- random_string()
args[["provinceState"]] <- random_string()
args[["city"]] <- random_string()
args[["sublocation"]] <- random_string()

# make Iptc4xmpExt object without and with args
objEmpty <- Iptc4xmpExt$new()
objRand <- do.call(Iptc4xmpExt$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Iptc4xmpExt")
  expect_s3_class(objRand, "Iptc4xmpExt")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Iptc4xmpExt$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Iptc4xmpExt")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Iptc4xmpExt$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Iptc4xmpExt")
})

test_that("print works", {
  obj <- Iptc4xmpExt$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
