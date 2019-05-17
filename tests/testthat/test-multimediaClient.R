source("setup-vars.R")

test_that("Class hierarchy correct", {
  expect_is(mc, "MultimediaClient")
  expect_is(mc, "ApiClient")
})
