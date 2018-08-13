library("nbaR")
library("testthat")

set.seed(111)

context("Testing class LngLatAlt")

test_that("Constructor works", {
  obj <- LngLatAlt$new()
  expect_is(obj, "LngLatAlt")

  # test constructor with random arguments
  # test field longitude, type numeric
  obj <- LngLatAlt$new(longitude = runif(1))
  expect_is(obj, "LngLatAlt")
  # test field latitude, type numeric
  obj <- LngLatAlt$new(latitude = runif(1))
  expect_is(obj, "LngLatAlt")
  # test field altitude, type numeric
  obj <- LngLatAlt$new(altitude = runif(1))
  expect_is(obj, "LngLatAlt")
  # test field additionalElements, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- LngLatAlt$new(additionalElements = randomList)
  expect_is(obj, "LngLatAlt")
})

test_that("toList works", {
  obj <- LngLatAlt$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- LngLatAlt$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
