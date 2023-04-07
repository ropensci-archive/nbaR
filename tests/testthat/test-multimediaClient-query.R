test_that("Query with MultiMediaClient returns multimedia objects", {
  res <- mc$query()
  ## Default number of returned documents is 10
  expect_length(res$content$resultSet, 10)
  expect_equal(res$content$resultSet[[1]]$item[[1]]$code, "BRAHMS")
  # for (hit in res$content$resultSet) {
  #   expect_s3_class(hit$item, "MultiMediaObject")
  # }
})

test_that("Query with QuerySpec works", {
  qc <- QueryCondition$new(
    field = "identifications.defaultClassification.genus",
    operator = "EQUALS", value = "Phalacrocorax"
  )
  qs <- QuerySpec$new(conditions = list(qc))
  res <- mc$query(querySpec = qs)
  for (r in res$content$resultSet) {
    expect_type(r$item, "list")
  }
})
