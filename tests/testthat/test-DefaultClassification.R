# Make a list with random arguments for all fields in the class
args <- list()
args[["kingdom"]] <- random_string()
args[["phylum"]] <- random_string()
args[["className"]] <- random_string()
args[["order"]] <- random_string()
args[["superFamily"]] <- random_string()
args[["family"]] <- random_string()
args[["genus"]] <- random_string()
args[["subgenus"]] <- random_string()
args[["specificEpithet"]] <- random_string()
args[["infraspecificEpithet"]] <- random_string()
args[["infraspecificRank"]] <- random_string()

# make DefaultClassification object without and with args
objEmpty <- DefaultClassification$new()
objRand <- do.call(DefaultClassification$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "DefaultClassification")
  expect_s3_class(objRand, "DefaultClassification")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- DefaultClassification$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "DefaultClassification")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- DefaultClassification$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "DefaultClassification")
})

test_that("print works", {
  obj <- DefaultClassification$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
