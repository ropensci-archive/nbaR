

context("Testing class LngLatAlt")

# Make a list with random arguments for all fields in the class
args <- list()
args[["longitude"]] <- runif(1)
args[["latitude"]] <- runif(1)
args[["altitude"]] <- runif(1)
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["additionalElements"]] <- randomList

# make LngLatAlt object without and with args
objEmpty <- LngLatAlt$new()
objRand <- do.call(LngLatAlt$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "LngLatAlt")
  expect_is(objRand, "LngLatAlt")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- LngLatAlt$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "LngLatAlt")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- LngLatAlt$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "LngLatAlt")
})

test_that("print works", {
  obj <- LngLatAlt$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
