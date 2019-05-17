source("setup-vars.R")

test_that("Class hierarchy correct", {
  expect_is(tc, "TaxonClient")
  expect_is(tc, "ApiClient")
})
