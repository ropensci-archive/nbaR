# Make a list with random arguments for all fields in the class
args <- list()
args[["fullScientificName"]] <- random_string()
args[["taxonomicStatus"]] <- random_string()
args[["genusOrMonomial"]] <- random_string()
args[["subgenus"]] <- random_string()
args[["specificEpithet"]] <- random_string()
args[["infraspecificEpithet"]] <- random_string()
args[["authorshipVerbatim"]] <- random_string()

# make SummaryScientificName object without and with args
objEmpty <- SummaryScientificName$new()
objRand <- do.call(SummaryScientificName$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "SummaryScientificName")
  expect_s3_class(objRand, "SummaryScientificName")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- SummaryScientificName$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SummaryScientificName")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- SummaryScientificName$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SummaryScientificName")
})

test_that("print works", {
  obj <- SummaryScientificName$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
