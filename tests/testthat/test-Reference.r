

context("Testing class Reference")

# Make a list with random arguments for all fields in the class
args <- list()
args[["titleCitation"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["citationDetail"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["uri"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["author"]] <- Person$new()
randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
  as.Date("2018/06/04"),
  by = "day"
), 1))
args[["publicationDate"]] <- randomDate

# make Reference object without and with args
objEmpty <- Reference$new()
objRand <- do.call(Reference$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Reference")
  expect_is(objRand, "Reference")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Reference$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Reference")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Reference$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Reference")
})

test_that("print works", {
  obj <- Reference$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
