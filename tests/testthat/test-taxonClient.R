test_that("Class hierarchy correct", {
  expect_s3_class(tc, "TaxonClient")
  expect_s3_class(tc, "ApiClient")
})
