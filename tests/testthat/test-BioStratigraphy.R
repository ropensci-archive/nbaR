# Make a list with random arguments for all fields in the class
args <- list()
args[["youngBioDatingQualifier"]] <- random_string()
args[["youngBioName"]] <- random_string()
args[["youngFossilZone"]] <- random_string()
args[["youngFossilSubZone"]] <- random_string()
args[["youngBioCertainty"]] <- random_string()
args[["youngStratType"]] <- random_string()
args[["bioDatingQualifier"]] <- random_string()
args[["bioPreferredFlag"]] <- sample(c(TRUE, FALSE), 1)
args[["rangePosition"]] <- random_string()
args[["oldBioName"]] <- random_string()
args[["bioIdentifier"]] <- random_string()
args[["oldFossilzone"]] <- random_string()
args[["oldFossilSubzone"]] <- random_string()
args[["oldBioCertainty"]] <- random_string()
args[["oldBioStratType"]] <- random_string()

# make BioStratigraphy object without and with args
objEmpty <- BioStratigraphy$new()
objRand <- do.call(BioStratigraphy$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "BioStratigraphy")
  expect_s3_class(objRand, "BioStratigraphy")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- BioStratigraphy$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "BioStratigraphy")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- BioStratigraphy$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "BioStratigraphy")
})

test_that("print works", {
  obj <- BioStratigraphy$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
