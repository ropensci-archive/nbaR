# Make a list with random arguments for all fields in the class
args <- list()
args[["category"]] <- random_string()
args[["description"]] <- random_string()
args[["language"]] <- random_string()

# make TaxonDescription object without and with args
objEmpty <- TaxonDescription$new()
objRand <- do.call(TaxonDescription$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "TaxonDescription")
  expect_s3_class(objRand, "TaxonDescription")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- TaxonDescription$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "TaxonDescription")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- TaxonDescription$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "TaxonDescription")
})

test_that("print works", {
  obj <- TaxonDescription$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
