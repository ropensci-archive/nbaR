source("setup-vars.R")

test_that("Class hierarchy correct", {
  expect_is(sc, "SpecimenClient")
  expect_is(sc, "ApiClient")
})
