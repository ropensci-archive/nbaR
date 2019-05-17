

context("Testing class VernacularName")

# Make a list with random arguments for all fields in the class
args <- list()
args[["name"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["language"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["preferred"]] <- sample(c(TRUE, FALSE), 1)
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Reference$new()
)
args[["references"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Expert$new()
)
args[["experts"]] <- randomList

# make VernacularName object without and with args
objEmpty <- VernacularName$new()
objRand <- do.call(VernacularName$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "VernacularName")
  expect_is(objRand, "VernacularName")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- VernacularName$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "VernacularName")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- VernacularName$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "VernacularName")
})

test_that("print works", {
  obj <- VernacularName$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
