library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Reference")

test_that("Constructor works", {
  obj <- Reference$new()
  expect_is(obj, "Reference")

  # test constructor with random arguments
  # test field titleCitation, type character
  obj <- Reference$new(
    titleCitation = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Reference")
  # test field citationDetail, type character
  obj <- Reference$new(
    citationDetail = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Reference")
  # test field uri, type character
  obj <- Reference$new(
    uri = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Reference")
  # test field author, type Person
  obj <- Reference$new(author = Person$new())
  expect_is(obj, "Reference")
  # test field publicationDate, type character
  randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
  obj <- Reference$new(publicationDate = randomDate)
  expect_is(obj, "Reference")
})

test_that("toList works", {
  obj <- Reference$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Reference$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
