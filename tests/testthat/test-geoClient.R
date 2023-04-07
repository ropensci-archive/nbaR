test_that("Class hierarchy correct", {
  expect_s3_class(gc, "GeoClient")
  expect_s3_class(gc, "ApiClient")
})
