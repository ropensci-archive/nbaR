library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Iptc4xmpExt")

test_that("Constructor works", {
  obj <- Iptc4xmpExt$new()
  expect_is(obj, "Iptc4xmpExt")

  # test constructor with random arguments
  # test field locationShown, type character
  obj <- Iptc4xmpExt$new(
    locationShown = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Iptc4xmpExt")
  # test field worldRegion, type character
  obj <- Iptc4xmpExt$new(
    worldRegion = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Iptc4xmpExt")
  # test field countryCode, type character
  obj <- Iptc4xmpExt$new(
    countryCode = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Iptc4xmpExt")
  # test field countryName, type character
  obj <- Iptc4xmpExt$new(
    countryName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Iptc4xmpExt")
  # test field provinceState, type character
  obj <- Iptc4xmpExt$new(
    provinceState = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Iptc4xmpExt")
  # test field city, type character
  obj <- Iptc4xmpExt$new(
    city = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Iptc4xmpExt")
  # test field sublocation, type character
  obj <- Iptc4xmpExt$new(
    sublocation = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Iptc4xmpExt")
})

test_that("toList works", {
  obj <- Iptc4xmpExt$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Iptc4xmpExt$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
