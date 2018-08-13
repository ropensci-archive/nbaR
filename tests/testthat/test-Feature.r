library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Feature")

test_that("Constructor works", {
  obj <- Feature$new()
  expect_is(obj, "Feature")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- Feature$new(crs = Crs$new())
  expect_is(obj, "Feature")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Feature$new(bbox = randomList)
  expect_is(obj, "Feature")
  # test field id, type character
  obj <- Feature$new(
    id = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Feature")
})

test_that("toList works", {
  obj <- Feature$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Feature$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
