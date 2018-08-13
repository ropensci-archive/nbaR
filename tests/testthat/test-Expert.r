library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Expert")

test_that("Constructor works", {
  obj <- Expert$new()
  expect_is(obj, "Expert")

  # test constructor with random arguments
  # test field agentText, type character
  obj <- Expert$new(
    agentText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Expert")
  # test field fullName, type character
  obj <- Expert$new(
    fullName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Expert")
  # test field organization, type Organization
  obj <- Expert$new(organization = Organization$new())
  expect_is(obj, "Expert")
})

test_that("toList works", {
  obj <- Expert$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Expert$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
