library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Agent")

test_that("Constructor works", {
  obj <- Agent$new()
  expect_is(obj, "Agent")

  # test constructor with random arguments
  # test field agentText, type character
  obj <- Agent$new(
    agentText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Agent")
})

test_that("toList works", {
  obj <- Agent$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Agent$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
