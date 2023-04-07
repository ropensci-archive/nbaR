# Make a list with random arguments for all fields in the class
args <- list()
args[["qualifier"]] <- random_string()
args[["preferredFlag"]] <- sample(c(TRUE, FALSE), 1)
args[["member2"]] <- random_string()
args[["member"]] <- random_string()
args[["informalName2"]] <- random_string()
args[["informalName"]] <- random_string()
args[["importedName2"]] <- random_string()
args[["importedName1"]] <- random_string()
args[["lithoIdentifier"]] <- random_string()
args[["formation2"]] <- random_string()
args[["formationGroup2"]] <- random_string()
args[["formationGroup"]] <- random_string()
args[["formation"]] <- random_string()
args[["certainty2"]] <- random_string()
args[["certainty"]] <- random_string()
args[["bed2"]] <- random_string()
args[["bed"]] <- random_string()

# make LithoStratigraphy object without and with args
objEmpty <- LithoStratigraphy$new()
objRand <- do.call(LithoStratigraphy$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "LithoStratigraphy")
  expect_s3_class(objRand, "LithoStratigraphy")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- LithoStratigraphy$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "LithoStratigraphy")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- LithoStratigraphy$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "LithoStratigraphy")
})

test_that("print works", {
  obj <- LithoStratigraphy$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
