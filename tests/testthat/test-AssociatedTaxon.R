# Make a list with random arguments for all fields in the class
args <- list()
args[["name"]] <- random_string()
args[["relationType"]] <- random_string()

# make AssociatedTaxon object without and with args
objEmpty <- AssociatedTaxon$new()
objRand <- do.call(AssociatedTaxon$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "AssociatedTaxon")
  expect_s3_class(objRand, "AssociatedTaxon")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- AssociatedTaxon$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "AssociatedTaxon")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- AssociatedTaxon$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "AssociatedTaxon")
})

test_that("print works", {
  obj <- AssociatedTaxon$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
