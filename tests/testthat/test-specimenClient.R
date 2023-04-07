test_that("Class hierarchy correct", {
  expect_s3_class(sc, "SpecimenClient")
  expect_s3_class(sc, "ApiClient")
})
