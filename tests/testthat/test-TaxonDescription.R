

context("Testing class TaxonDescription")

# Make a list with random arguments for all fields in the class
args <- list()
args[["category"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["description"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["language"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make TaxonDescription object without and with args
objEmpty <- TaxonDescription$new()
objRand <- do.call(TaxonDescription$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "TaxonDescription")
  expect_is(objRand, "TaxonDescription")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- TaxonDescription$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "TaxonDescription")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- TaxonDescription$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "TaxonDescription")
})

test_that("print works", {
  obj <- TaxonDescription$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
