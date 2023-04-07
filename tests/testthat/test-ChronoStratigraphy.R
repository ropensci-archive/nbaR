# Make a list with random arguments for all fields in the class
args <- list()
args[["youngRegionalSubstage"]] <- random_string()
args[["youngRegionalStage"]] <- random_string()
args[["youngRegionalSeries"]] <- random_string()
args[["youngDatingQualifier"]] <- random_string()
args[["youngInternSystem"]] <- random_string()
args[["youngInternSubstage"]] <- random_string()
args[["youngInternStage"]] <- random_string()
args[["youngInternSeries"]] <- random_string()
args[["youngInternErathem"]] <- random_string()
args[["youngInternEonothem"]] <- random_string()
args[["youngChronoName"]] <- random_string()
args[["youngCertainty"]] <- random_string()
args[["oldDatingQualifier"]] <- random_string()
args[["chronoPreferredFlag"]] <- sample(c(TRUE, FALSE), 1)
args[["oldRegionalSubstage"]] <- random_string()
args[["oldRegionalStage"]] <- random_string()
args[["oldRegionalSeries"]] <- random_string()
args[["oldInternSystem"]] <- random_string()
args[["oldInternSubstage"]] <- random_string()
args[["oldInternStage"]] <- random_string()
args[["oldInternSeries"]] <- random_string()
args[["oldInternErathem"]] <- random_string()
args[["oldInternEonothem"]] <- random_string()
args[["oldChronoName"]] <- random_string()
args[["chronoIdentifier"]] <- random_string()
args[["oldCertainty"]] <- random_string()

# make ChronoStratigraphy object without and with args
objEmpty <- ChronoStratigraphy$new()
objRand <- do.call(ChronoStratigraphy$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "ChronoStratigraphy")
  expect_s3_class(objRand, "ChronoStratigraphy")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- ChronoStratigraphy$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "ChronoStratigraphy")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- ChronoStratigraphy$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "ChronoStratigraphy")
})

test_that("print works", {
  obj <- ChronoStratigraphy$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
