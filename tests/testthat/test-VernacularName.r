library("nbaR")
library("testthat")

set.seed(111)

context("Testing class VernacularName")

test_that("Constructor works", {
  obj <- VernacularName$new()
  expect_is(obj, "VernacularName")

  # test constructor with random arguments
  # test field name, type character
  obj <- VernacularName$new(
    name = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "VernacularName")
  # test field language, type character
  obj <- VernacularName$new(
    language = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "VernacularName")
  # test field references, type list, datatype Reference
  lst <- lapply(1:sample(1:10, 1), function(x) Reference$new())
  obj <- VernacularName$new(references = lst)
  expect_is(obj, "VernacularName")
  # test field experts, type list, datatype Expert
  lst <- lapply(1:sample(1:10, 1), function(x) Expert$new())
  obj <- VernacularName$new(experts = lst)
  expect_is(obj, "VernacularName")
})

test_that("toList works", {
  obj <- VernacularName$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- VernacularName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
