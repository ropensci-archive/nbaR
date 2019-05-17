source("setup-vars.R")

test_that("Class hierarchy correct", {
  expect_is(gc, "GeoClient")
  expect_is(gc, "ApiClient")
})
