test_that("Class hierarchy correct", {
  expect_s3_class(mc, "MultimediaClient")
  expect_s3_class(mc, "ApiClient")
})
