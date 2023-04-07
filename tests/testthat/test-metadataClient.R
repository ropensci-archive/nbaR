test_that("Class hierarchy correct", {
  expect_s3_class(mdc, "MetadataClient")
  expect_s3_class(mdc, "ApiClient")
})

test_that("Controlled lists work", {
  expect_true(length(mdc$get_controlled_lists()$content) > 0)
  expect_true(length(mdc$get_controlled_list_taxonomic_status()$content) > 0)
  expect_true(length(mdc$get_controlled_list_specimen_type_status()$content) > 0)
  expect_true(length(mdc$get_controlled_list_sex()$content) > 0)
  # no longer available?
  # expect_true(length(mdc$get_controlled_list_phase_or_stage()$content) > 0)
})

test_that("GetAllowedDateFormats works", {
  expect_true(length(mdc$get_allowed_date_formats()$content) > 0)
})

test_that("GetRestServices works", {
  expect_s3_class(mdc$get_rest_services()$content[[1]], "RestService")
})

test_that("Settings work", {
  settings <- mdc$get_settings()$content
  expect_equal(length(settings), 2)
})
