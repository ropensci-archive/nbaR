library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Person")

test_that("Constructor works", {
  obj <- Person$new()
  expect_is(obj, "Person")

  # test constructor with random arguments
  # test field agentText, type character
  obj <- Person$new(
    agentText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Person")
  # test field fullName, type character
  obj <- Person$new(
    fullName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Person")
  # test field organization, type Organization
  obj <- Person$new(organization = Organization$new())
  expect_is(obj, "Person")
})

test_that("toList works", {
  obj <- Person$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Person$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
