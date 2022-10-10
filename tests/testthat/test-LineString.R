

context("Testing class LineString")

# Make a list with random arguments for all fields in the class
args <- list()
args[["crs"]] <- Crs$new()
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["bbox"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) LngLatAlt$new()
)
args[["coordinates"]] <- randomList

# make LineString object without and with args
objEmpty <- LineString$new()
objRand <- do.call(LineString$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "LineString")
  expect_is(objRand, "LineString")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- LineString$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "LineString")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- LineString$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "LineString")
})

test_that("print works", {
  obj <- LineString$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
