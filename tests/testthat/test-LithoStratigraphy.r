library("nbaR")
library("testthat")

set.seed(111)

context("Testing class LithoStratigraphy")

test_that("Constructor works", {
  obj <- LithoStratigraphy$new()
  expect_is(obj, "LithoStratigraphy")

  # test constructor with random arguments
  # test field qualifier, type character
  obj <- LithoStratigraphy$new(
    qualifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field member2, type character
  obj <- LithoStratigraphy$new(
    member2 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field member, type character
  obj <- LithoStratigraphy$new(
    member = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field informalName2, type character
  obj <- LithoStratigraphy$new(
    informalName2 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field informalName, type character
  obj <- LithoStratigraphy$new(
    informalName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field importedName2, type character
  obj <- LithoStratigraphy$new(
    importedName2 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field importedName1, type character
  obj <- LithoStratigraphy$new(
    importedName1 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field lithoIdentifier, type character
  obj <- LithoStratigraphy$new(
    lithoIdentifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field formation2, type character
  obj <- LithoStratigraphy$new(
    formation2 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field formationGroup2, type character
  obj <- LithoStratigraphy$new(
    formationGroup2 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field formationGroup, type character
  obj <- LithoStratigraphy$new(
    formationGroup = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field formation, type character
  obj <- LithoStratigraphy$new(
    formation = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field certainty2, type character
  obj <- LithoStratigraphy$new(
    certainty2 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field certainty, type character
  obj <- LithoStratigraphy$new(
    certainty = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field bed2, type character
  obj <- LithoStratigraphy$new(
    bed2 = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
  # test field bed, type character
  obj <- LithoStratigraphy$new(
    bed = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "LithoStratigraphy")
})

test_that("toList works", {
  obj <- LithoStratigraphy$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- LithoStratigraphy$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
