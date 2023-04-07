# Make a list with random arguments for all fields in the class
args <- list()
args[["titleCitation"]] <- random_string()
args[["citationDetail"]] <- random_string()
args[["uri"]] <- random_string()
args[["author"]] <- Person$new()
args[["publicationDate"]] <- random_date()

# make Reference object without and with args
objEmpty <- Reference$new()
objRand <- do.call(Reference$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Reference")
  expect_s3_class(objRand, "Reference")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Reference$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Reference")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Reference$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Reference")
})

test_that("print works", {
  obj <- Reference$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
